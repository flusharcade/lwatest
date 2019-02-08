//
//  TestAPIViewController.swift
//  LWA Sample App
//
//  Created by Michael Williams on 8/2/19.
//  Copyright © 2019 Sheng Bi. All rights reserved.
//

import UIKit
import LoginWithAmazon

class TestAPIViewController: UIViewController {

    @IBOutlet weak var testAPIButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func touchBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func testAPIAction(_ sender: Any) {
        print("Test API action pressed")
    }
}

