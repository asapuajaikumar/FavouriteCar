//
//  RatingViewModel.swift
//  RandomRating
//
//  Created by Ajaikumar on 15/11/19.
//  Copyright © 2019 Ajaikumar. All rights reserved.
//

import Foundation

class FavouriteViewModel{
    var name: String
    var rating: Int
    //Dependency Injection
    init(favouriteCar: FavouriteCar) {
        self.name = favouriteCar.name
        self.rating = favouriteCar.rating
    }
}
