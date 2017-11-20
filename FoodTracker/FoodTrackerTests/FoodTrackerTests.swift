//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Mobileware on 11/13/17.
//  Copyright © 2017 Mobileware. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // meal class tests
    func testMealInitializationSucceeds(){
        // zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo:nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
    }
    
    func testMealInitializationFails(){
        // negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo:nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // rating exceeds max
        let largeRatingMeal = Meal.init(name: "Large", photo:nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        //empty string
        let emptyNameMeal = Meal.init(name: "", photo: nil, rating: 5)
        XCTAssertNil(emptyNameMeal)
    }
    
}
