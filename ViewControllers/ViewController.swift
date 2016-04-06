//
//  ViewController.swift
//  ViewControllers
//
//  Created by Jan Mísař on 06.04.16.
//  Copyright © 2016 Ackee. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    weak var pushButton: UIButton!

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        super.loadView()

        view.backgroundColor = .redColor()

        let pushButton = UIButton()
        pushButton.setTitle("Push next controller", forState: .Normal)
        view.addSubview(pushButton)
        pushButton.snp_makeConstraints { make in
            make.center.equalTo(0)
        }
        self.pushButton = pushButton
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "ViewController"
        self.pushButton.addTarget(self, action: #selector(pushButtonTapped(_:)), forControlEvents: .TouchUpInside)
    }

    func pushButtonTapped(sender: UIButton) {
        self.navigationController?.pushViewController(AnotherViewController(), animated: true)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController will appear.")
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController did appear.")
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController will disappear.")
    }

    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController did disappear.")
    }
}
