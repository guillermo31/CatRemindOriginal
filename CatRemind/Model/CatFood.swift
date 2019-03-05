//
//  CatFood.swift
//  CatRemind
//
//  Created by Guillermo Ramos  on 3/5/19.
//  Copyright © 2019 Guillermo Ramos . All rights reserved.
//

import Foundation
import UIKit

class CatFood
{
    //size in pounds
    private var foodSize: Double
    private var foodType: String
    
    
    init(size: Double, type: String)
    {
        self.foodSize = size
        self.foodType = type
    }
    
    public func whenRunsOut() -> Double
    {
        var days = 0.0
        //serving in pounds
        let dailyServing = 0.4
        
        days = foodSize / dailyServing
        
        return days
    }
    
    
    
    
    
}
