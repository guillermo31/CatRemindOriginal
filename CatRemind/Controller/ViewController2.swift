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
    
    //GUI outlets
    @IBOutlet weak var muchFood: UITextField!
    @IBOutlet weak var foodKind: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    
    //GUI actions
    @IBAction func submitNewFood(_ sender: Any)
    {
        //To store size of food given by user
        guard let newSize = Double(muchFood.text!)
        else
        {
            print("Not a number!")
            return
        }
        
        //To store food kind given by user
        let newFoodKind = foodKind.text!
        
        //instance of CatFood object
        let newFood = CatFood(size: newSize, type: newFoodKind)
        
        //Logic statements to determine output
        if(foodKind.text == "dry")
        {
            displayLabel.text = "\(newFood.whenDryRunsOut()) days until the food runs out!"
        }
        else if(foodKind.text == "wet")
        {
            displayLabel.text = "\(newFood.whenWetRunsOut()) days until the food runs out!"
        }
    }
    
}
