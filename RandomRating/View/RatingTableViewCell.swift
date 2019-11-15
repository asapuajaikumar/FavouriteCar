//
//  TableCell.swift
//  RandomRating
//
//  Created by Ajaikumar on 13/11/19.
//  Copyright © 2019 Ajaikumar. All rights reserved.
//

import UIKit

class RatingTableViewCell: UITableViewCell {
    
    // MARK: Cell Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var fifthButton: UIButton!
    
    var ratingViewModel: FavouriteViewModel!{
        didSet {
            nameLabel.text = ratingViewModel.name
            addingStars(rating: ratingViewModel.rating)
        }
    }
    
    // MARK: Stars for favourite selection
    func addingStars(rating: Int){
        
        switch rating {
        case 1:
            firstButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            secondButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            thirdButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            fourthButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            fifthButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            
            break
        case 2:
            firstButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            secondButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            thirdButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            fourthButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            fifthButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            
            break
        case 3:
            firstButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            secondButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            thirdButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            fourthButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            fifthButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            
            break
        case 4:
            firstButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            secondButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            thirdButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            fourthButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            fifthButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            
            break
        case 5:
            firstButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            secondButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            thirdButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            fourthButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            fifthButton.setImage(UIImage.init(named: "StarImage"), for: .normal)
            
            break
            
        default:
            firstButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            secondButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            thirdButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            fourthButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
            fifthButton.setImage(UIImage.init(named: "StarUnSelected"), for: .normal)
        }
    }
}
