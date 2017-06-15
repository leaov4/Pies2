//
//  Fraction.swift
//  Pies2
//
//  Created by Lea Overend on 6/13/17.
//  Copyright © 2017 loverend. All rights reserved.
//

import Foundation
import UIKit

class Fraction  {
    
    var numerator: String?
    var denominator: String?
    var image: UIImage?
    
    init?(numerator: String?, denominator: String?) {
        self.numerator = numerator
        self.denominator = denominator
        self.image = nil

    }
    
}
