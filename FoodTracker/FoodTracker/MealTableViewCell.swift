//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Mobileware on 11/20/17.
//  Copyright © 2017 Mobileware. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    // properties
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var ratingControl: RatingControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
