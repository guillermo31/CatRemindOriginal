//
//  ViewController2.swift
//  CatRemind
//
//  Created by Guillermo Ramos  on 3/6/19.
//  Copyright © 2019 Guillermo Ramos . All rights reserved.
//

import UIKit

class ViewController2: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
    
    }
    
    @IBOutlet weak var muchFood: UITextField!
    @IBOutlet weak var foodKind: UITextField!
    
    
    @IBAction func submitNewFood(_ sender: Any)
    {
        guard let newSize = Double(muchFood.text!)
        else
        {
            print("Not a number!")
            return
        }
        
        let newFoodKind = foodKind.text!
        
        let newFood = CatFood(size: newSize, type: newFoodKind)
    }
    
}
