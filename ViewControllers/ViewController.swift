//
//  ViewController.swift
//  ViewControllers
//
//  Created by Jan Misar on 31.10.16.
//  Copyright © 2016 Jan Misar. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    weak var pushButton: UIButton!
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .red
        
        let pushButton = UIButton()
        pushButton.setTitle("Push AnotherViewController", for: .normal)
        view.addSubview(pushButton)
        pushButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        self.pushButton = pushButton
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "ViewController"
        pushButton.addTarget(self, action: #selector(pushButtonTapped(sender:)), for: .touchUpInside)
    }

    func pushButtonTapped(sender: UIButton) {
//        self.navigationController?.pushViewController(AnotherViewController(), animated: true)
        splitViewController?.showDetailViewController(AnotherViewController(), sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController will appear.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController did appear.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController will disappear.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController did disappear.")
    }

    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        print(previousTraitCollection)
        print("\n")
        print(traitCollection)
    }

}

