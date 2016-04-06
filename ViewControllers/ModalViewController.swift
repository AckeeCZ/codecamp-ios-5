//
//  ModalViewController.swift
//  ViewControllers
//
//  Created by Jan Mísař on 06.04.16.
//  Copyright © 2016 Ackee. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .grayColor()

        let dismissButton = UIButton()
        dismissButton.setTitle("Dismiss", forState: .Normal)
        view.addSubview(dismissButton)
        dismissButton.snp_makeConstraints { make in
            make.center.equalTo(0)
        }
        dismissButton.addTarget(self, action: #selector(dismissButtonTapped(_:)), forControlEvents: .TouchUpInside)
    }

    func dismissButtonTapped(sender: UIButton) {
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}
