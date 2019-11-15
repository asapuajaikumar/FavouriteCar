//
//  ViewController.swift
//  RandomRating
//
//  Created by Ajaikumar on 13/11/19.
//  Copyright © 2019 Ajaikumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var ratingTable: UITableView!
    let cellIdentifier = "RatingTableViewCell"
    var favouritesData: [FavouriteViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchFavourites()
    }
    
    //MARK: - Fetching Favourite Cars data from Local Json
    fileprivate func fetchFavourites() {
        fetchData(fileName: "FavouriteData") { (carsData) in
            self.favouritesData = carsData.map({return FavouriteViewModel.init(favouriteCar: $0)})
        }
        ratingTable.reloadData()
    }
    
    //MARK: - Tableview delegate & datasource methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favouritesData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? RatingTableViewCell else {
            fatalError("cell")
        }
        favouritesData = favouritesData.sorted(by: { $0.rating > $1.rating })
        cell.ratingViewModel = favouritesData[indexPath.row]
        return cell
    }
    
    //MARK: Rating Selection
    //Action for Star button when selected on favourite car
    @IBAction func buttonAction(_ sender: UIButton) {
        
        guard let cell = sender.superview?.superview?.superview as? RatingTableViewCell else { return }
        let indexPath = ratingTable.indexPath(for: cell)!
        favouritesData[indexPath.row].rating = sender.tag
        self.ratingTable.reloadData()
    }
    
    //MRAK: - Random Rating Action
    //Action for Random rating button which reorders the rating randomly
    @IBAction func randomRatingAction(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        //Random Time
        let randomTime = TimeInterval(Int.random(in: 0...3))
        
        Timer.scheduledTimer(withTimeInterval: randomTime, repeats: true) { timer in
            
            if sender.isSelected{
                for favouriteItem in self.favouritesData{
                    //Random Rating
                    favouriteItem.rating  = Int.random(in: 0...5)
                }
                DispatchQueue.main.async {
                    self.ratingTable.reloadData()
                }
            }
            
            if !sender.isSelected {
                timer.invalidate()
            }
        }
    }
}

