//
//  RandomRatingTests.swift
//  RandomRatingTests
//
//  Created by Ajaikumar on 13/11/19.
//  Copyright © 2019 Ajaikumar. All rights reserved.
//

import XCTest
@testable import RandomRating
//@testable import RandomRating

class RandomRatingTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //Testing ViewModel
    func testRatingViewModel()
    {
        let favouriteCar = FavouriteCar(name: "TestCar", rating: 1)
        let ratingViewModel = FavouriteViewModel.init(favouriteCar: favouriteCar)
        XCTAssertEqual(favouriteCar.name, ratingViewModel.name)
        XCTAssertEqual(favouriteCar.rating, ratingViewModel.rating)
    }

}
