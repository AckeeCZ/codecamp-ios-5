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
        
        let alertButton = UIButton()
        alertButton.setTitle("Alert", for: .normal)
        view.addSubview(alertButton)
        alertButton.snp.makeConstraints { make in
            make.top.equalTo(dismissButton.snp.bottom)
            make.centerX.equalToSuperview()
        }
        alertButton.addTarget(self, action: #selector(alertButtonTapped(_:)), for: .touchUpInside)

    }
    
    func dismissButtonTapped(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }

    func alertButtonTapped(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Default Style", message: "A standard alert.", preferredStyle: .alert)
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Blabla"
        }

        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("cancel")
        }
        alertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
            let textField = alertController.textFields![0] as UITextField
            print(textField.text)
        }
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true, completion: nil)
    }

    
}
