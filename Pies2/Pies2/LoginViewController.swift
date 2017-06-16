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
import FirebaseDatabase
import RealmSwift

class LoginViewController: UIViewController, LoginButtonDelegate {
    @IBOutlet weak var user: UITextField!

    @IBOutlet weak var schoolYear: UITextField!
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        ref = Database.database().reference()
        
        
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

    @IBAction func addUser(_ sender: Any){
        ref?.child("Users").childByAutoId().setValue(user.text)
        ref?.child("Users").childByAutoId().setValue(schoolYear.text)
        
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
