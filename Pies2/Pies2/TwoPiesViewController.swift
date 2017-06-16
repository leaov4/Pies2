//
//  TwoPiesViewController.swift
//  Pies2
//
//  Created by Lea Overend on 6/15/17.
//  Copyright © 2017 loverend. All rights reserved.
//

import UIKit

class TwoPiesViewController: UIViewController {

    @IBOutlet weak var frac1: UILabel!
    
    @IBOutlet weak var frac2: UILabel!
    
    var numString1 = String()
    var denomString1 = String()
    
    var numString2 = String()
    var denomString2 = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let numInt1 = Int(numString1)
        let numFloat1 = CGFloat((numInt1)!)
        
        let denomInt1 = Int(denomString1)
        let denomFloat1 = CGFloat((denomInt1)!)
        
        let numInt2 = Int(numString2)
        let numFloat2 = CGFloat((numInt2)!)
        
        let denomInt2 = Int(denomString2)
        let denomFloat2 = CGFloat((denomInt2)!)
        
        frac1.text = " \(numString1) / \(denomString1)"
        
        frac2.text = " \(numString2) / \(denomString2)"
        
        let pieChartView1 = PieChartView()
        pieChartView1.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 300)
        pieChartView1.segments = [
            Segment(color: .white, value: numFloat1),
            Segment(color: .blue, value: denomFloat1 - numFloat1),
        ]
        view.addSubview(pieChartView1)
        
        let pieChartView2 = PieChartView()
        pieChartView2.frame = CGRect(x: 0, y: 400, width: view.frame.size.width, height: 300)
        pieChartView2.segments = [
            Segment(color: .white, value: numFloat2),
            Segment(color: .blue, value: denomFloat2 - numFloat2),
           
        ]
        view.addSubview(pieChartView2)


        
        
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
