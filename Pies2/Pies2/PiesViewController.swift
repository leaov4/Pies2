//
//  PiesViewController.swift
//  Pies2
//
//  Created by Lea Overend on 6/15/17.
//  Copyright © 2017 loverend. All rights reserved.
//

import UIKit

class PiesViewController: UIViewController {

    var numString = String()
    var denomString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
          let numInt = Int(numString)
          let numFloat = CGFloat((numInt)!)
        
          let denomInt = Int(denomString)
          let denomFloat = CGFloat((denomInt)!)
     
        let pieChartView = PieChartView()
        pieChartView.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 300)
        pieChartView.segments = [
            Segment(color: .red, value: numFloat),
            Segment(color: .blue, value: denomFloat - numFloat),
            // Segment(color: .green, value: 30),
            // Segment(color: .yellow, value: 40)
        ]
        view.addSubview(pieChartView)
 
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
