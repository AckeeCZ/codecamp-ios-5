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

        let alertButton = UIButton()
        alertButton.setTitle("Alert", forState: .Normal)
        view.addSubview(alertButton)
        alertButton.snp_makeConstraints { make in
            make.top.equalTo(dismissButton.snp_bottom)
            make.centerX.equalTo(0)
        }
        alertButton.addTarget(self, action: #selector(alertButtonTapped(_:)), forControlEvents: .TouchUpInside)
    }

    func dismissButtonTapped(sender: UIButton) {
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }

    func alertButtonTapped(sender: UIButton) {

        let alertController = UIAlertController(title: "Default Style", message: "A standard alert.", preferredStyle: .Alert)

        alertController.addTextFieldWithConfigurationHandler { (textField) in
            textField.placeholder = "Blabla"
        }

        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            print("cancel")
        }
        alertController.addAction(cancelAction)

        let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            let textField = alertController.textFields![0] as UITextField
            print(textField.text)
        }
        alertController.addAction(OKAction)

        self.presentViewController(alertController, animated: true, completion: nil)
    }
}
