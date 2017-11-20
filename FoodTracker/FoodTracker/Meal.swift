//
//  Meal.swift
//  FoodTracker
//
//  Created by Mobileware on 11/20/17.
//  Copyright © 2017 Mobileware. All rights reserved.
//

import UIKit

class Meal{
    
    //properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //initialization
    init?(name: String, photo: UIImage?, rating: Int){
        
        guard !name.isEmpty else{
            return nil
        }
        
        guard (rating>=0) && (rating<=5) else{
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
        
        
    }
    
}
