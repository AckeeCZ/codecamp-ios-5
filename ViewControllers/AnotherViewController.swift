//
//  AnotherViewController.swift
//  ViewControllers
//
//  Created by Jan Misar on 31.10.16.
//  Copyright © 2016 Jan Misar. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "AnotherViewController"
//        title = "AnotherViewController blabla"
//        title = "AnotherViewController with a very long title"
        
        view.backgroundColor = .green
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
