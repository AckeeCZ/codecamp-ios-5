//
//  AnotherViewController.swift
//  ViewControllers
//
//  Created by Jan Misar on 31.10.16.
//  Copyright © 2016 Jan Misar. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    weak var pushButton: UIButton!

    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .green
        
        let pushButton = UIButton()
        pushButton.setTitle("Push ViewController", for: .normal)
        view.addSubview(pushButton)
        pushButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        self.pushButton = pushButton
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "AnotherViewController"
//        title = "AnotherViewController blabla"
//        title = "AnotherViewController with a very long title"
        
        pushButton.addTarget(self, action: #selector(pushButtonTapped(_:)), for: .touchUpInside)
    }

    func pushButtonTapped(_ sender: UIButton) {
        self.navigationController?.pushViewController(ViewController(), animated: true)
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
