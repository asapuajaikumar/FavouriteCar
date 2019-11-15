//
//  JsonDataFile.swift
//  RandomRating
//
//  Created by Ajaikumar on 15/11/19.
//  Copyright © 2019 Ajaikumar. All rights reserved.
//

import Foundation

//For Fetching local json data
func fetchData(fileName :String, callback :@escaping ([FavouriteCar]) -> ())
{
    guard let mainUrl = Bundle.main.url(forResource: fileName, withExtension: "json") else { return }
    do{
        let jsonData = try Data(contentsOf: mainUrl)
        let decoder = JSONDecoder()
        let favouriteCarsList = try decoder.decode([FavouriteCar].self, from: jsonData)
        callback(favouriteCarsList)
    } catch let parsingError {
        print("Error", parsingError)
    }
}
