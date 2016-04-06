//
//  AnotherViewController.swift
//  ViewControllers
//
//  Created by Jan Mísař on 06.04.16.
//  Copyright © 2016 Ackee. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    weak var pushButton: UIButton!

    override func loadView() {
        super.loadView()

        view.backgroundColor = .greenColor()

        let pushButton = UIButton()
        pushButton.setTitle("Push ViewController", forState: .Normal)
        view.addSubview(pushButton)
        pushButton.snp_makeConstraints { make in
            make.center.equalTo(0)
        }
        self.pushButton = pushButton
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "AnotherViewController"
//        self.title = "AnotherViewController blabla"
//        self.title = "AnotherViewController with a very long title"

        self.pushButton.addTarget(self, action: #selector(pushButtonTapped(_:)), forControlEvents: .TouchUpInside)
    }

    func pushButtonTapped(sender: UIButton) {
        self.navigationController?.pushViewController(ViewController(), animated: true)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("AnotherViewController will appear.")
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("AnotherViewController did appear.")
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("AnotherViewController will disappear.")
    }

    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("AnotherViewController did disappear.")
    }

    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}
