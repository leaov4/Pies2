//
//  CreatePiesViewController.swift
//  Pies2
//
//  Created by Lea Overend on 6/13/17.
//  Copyright © 2017 loverend. All rights reserved.
//

import UIKit
import Firebase
import FirebaseStorage

class CreatePiesViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {

    @IBOutlet weak var numerator: UITextField!
    @IBOutlet weak var denominator: UITextField!
    
  //  var numString: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SegueToPie"{
            let destination = segue.destination as? PiesViewController
            destination?.numString = numerator.text!
            destination?.denomString = denominator.text!
        }
    }
  

}
