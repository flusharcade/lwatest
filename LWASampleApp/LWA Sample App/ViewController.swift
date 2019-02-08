//
//  ViewController.swift
//  LWA Sample App
//
//  Created by Sheng Bi on 2/16/17.
//  Copyright © 2017 Sheng Bi. All rights reserved.
//

import UIKit
import LoginWithAmazon

class ViewController: UIViewController, AIAuthenticationDelegate {
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var logoutBtn: UIButton!
    @IBOutlet weak var testAPIButton: UIButton!
    
    let lwa = LoginWithAmazonProxy.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Try login at the beginning, if user is already logged in, acquire access token
        lwa.login(delegate: self)
    }

    @IBAction func onClickLoginBtn(_ sender: Any) {
        lwa.login(delegate: self)
    }
    
    @IBAction func onClickLogoutBtn(_ sender: Any) {
        lwa.logout(delegate: self)
    }
    
    @IBAction func testAPI(_ sender: Any) {
        self.performSegue(withIdentifier: "PresentTestAPI", sender: self)
    }
    
    func requestDidSucceed(_ apiResult: APIResult) {

        switch(apiResult.api) {
            case API.authorizeUser:
                print("Authorized")
                lwa.getAccessToken(delegate: self)
            case API.getAccessToken:
                print("Login successfully!")
                loginBtn.isEnabled = false
                logoutBtn.isEnabled = true
                testAPIButton.isEnabled = true
            case API.clearAuthorizationState:
                print("Logout successfully!")
                loginBtn.isEnabled = true
                logoutBtn.isEnabled = false
                testAPIButton.isEnabled = false
            default:
                return
            }
    }
    
    func requestDidFail(_ errorResponse: APIError) {
        print("Error: \(errorResponse.error.message)")
    }

}

