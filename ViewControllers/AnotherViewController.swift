//
//  AnotherViewController.swift
//  ViewControllers
//
//  Created by Jan Misar on 31.10.16.
//  Copyright © 2016 Jan Misar. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    weak var presentButton: UIButton!

    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .green
        
        let presentButton = UIButton()
        presentButton.setTitle("Present ModalViewController", for: .normal)
        view.addSubview(presentButton)
        presentButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        self.presentButton = presentButton
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "AnotherViewController"
//        title = "AnotherViewController blabla"
//        title = "AnotherViewController with a very long title"
        
        presentButton.addTarget(self, action: #selector(presentButtonTapped(_:)), for: .touchUpInside)
    }

    func presentButtonTapped(_ sender: UIButton) {
        
        let controller = ModalViewController()
//        controller.modalTransitionStyle = .partialCurl
//        controller.modalPresentationStyle = .popover
//        controller.popoverPresentationController?.sourceView = sender
        
        self.present(controller, animated: true, completion: nil)

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("AnotherViewController will appear.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("AnotherViewController did appear.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("AnotherViewController will disappear.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("AnotherViewController did disappear.")
    }

}
