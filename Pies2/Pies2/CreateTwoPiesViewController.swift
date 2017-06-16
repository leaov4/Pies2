//
//  CreateTwoPiesViewController.swift
//  Pies2
//
//  Created by Lea Overend on 6/15/17.
//  Copyright © 2017 loverend. All rights reserved.
//

import UIKit
import RealmSwift

class CreateTwoPiesViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak var numerator1: UITextField!

    @IBOutlet weak var denominator1: UITextField!
    
    @IBOutlet weak var numerator2: UITextField!
    
    @IBOutlet weak var denominator2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
        */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SegueToTwoPies"{
            let destination = segue.destination as? TwoPiesViewController
            destination?.numString1 = numerator1.text!
            destination?.denomString1 = denominator1.text!
            destination?.numString2 = numerator2.text!
            destination?.denomString2 = denominator2.text!
        }
    }

    
}
