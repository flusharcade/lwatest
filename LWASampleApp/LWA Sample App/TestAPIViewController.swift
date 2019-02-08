//
//  TestAPIViewController.swift
//  LWA Sample App
//
//  Created by Michael Williams on 8/2/19.
//  Copyright © 2019 Sheng Bi. All rights reserved.
//

import UIKit
import LoginWithAmazon

class TestAPIViewController: UIViewController, AIAuthenticationDelegate {
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var logoutBtn: UIButton!
    
    let lwa = LoginWithAmazonProxy.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Try login at the beginning, if user is already logged in, acquire access token
        lwa.login(delegate: self)
    }
    
}

