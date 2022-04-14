//
//  ViewController.swift
//  ASHImageLoader
//
//  Created by sheikhamais@gmail.com on 04/11/2022.
//  Copyright (c) 2022 sheikhamais@gmail.com. All rights reserved.
//

import UIKit
import ASHImageLoader

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Test.testing()
        AnotherTestClass.printForTest()
        ThisShouldBeReceived.testing()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

