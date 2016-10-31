//
//  ModalViewController.swift
//  ViewControllers
//
//  Created by Jan Misar on 31.10.16.
//  Copyright © 2016 Jan Misar. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        let dismissButton = UIButton()
        dismissButton.setTitle("Dismiss", for: .normal)
        view.addSubview(dismissButton)
        dismissButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        dismissButton.addTarget(self, action: #selector(dismissButtonTapped(_:)), for: .touchUpInside)
    }
    
    func dismissButtonTapped(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }

}
