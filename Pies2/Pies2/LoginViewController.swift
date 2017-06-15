//
//  LoginViewController.swift
//  Pies2
//
//  Created by Lea Overend on 6/13/17.
//  Copyright © 2017 loverend. All rights reserved.
//

import UIKit
import FacebookCore
import FacebookLogin
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController, LoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let accessToken = AccessToken.current {
            //already logged on
            AccessToken.current?.userId
        }
    
        
        let loginButton = LoginButton(readPermissions: [ . publicProfile])
        loginButton.delegate = self
        loginButton.center = view.center
        view.addSubview(loginButton)
        
        // Do any additional setup after loading the view.
    }

    func loginButtonDidCompleteLogin(_ loginButton: LoginButton, result: LoginResult) {
        
        let credential = FacebookAuthProvider.credential(withAccessToken: (AccessToken.current?.authenticationToken)!)
        
        Auth.auth().signIn(with: credential) { (user, error) in
            if let error = error {
                // ...
                return
            }
            // User is signed in
            // ...
      //      print("Firebase logged in")
        //    let user = Auth.auth().currentUser
          //  if let user = user {
           //     let uid = user.uid
             //   let email = user.email
               // let photoURL = user.photoURL
                // ...
            
            
           let mainViewController = self.storyboard?.instantiateViewController(withIdentifier: "mainView")
           self.present(mainViewController!, animated: true, completion: nil)
            
            
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: LoginButton) {
        // Logged out
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
