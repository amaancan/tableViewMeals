//
//  FoodTableViewController.swift
//  4.5TableViewLabMealTracker
//  Page 533
//
//  Created by Amaan on 2017-11-23.
//  Copyright © 2017 Amaan. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Call Food API Data
        let myAPI = FoodAPI()
        meals = myAPI.getMeals()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        //a) Return the number of meals in your meals array
        // TODO: Question - Do I need "self." for meals? Why or why not?
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Access the meal for the given section, and return the number of food items in that meal
        return meals[section].food.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        //a) Dequeue a cell with the reuse identifier "foodCell."
        //b) Access the meal for the row using indexPath.section.
        //c) Access the food for the row using indexPath.row.
        //d) Update the cell's text label text and detail text label text to be the name and description of the food item.
        
        let food = meals[indexPath.section].food[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
}
