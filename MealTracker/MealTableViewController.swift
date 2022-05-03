//
//  MealTableViewController.swift
//  MealTracker
//
//  Created by Daria Salamakha on 21.02.2022.
//

import UIKit

class MealTableViewController: UITableViewController {

    // MARK: - Properties
    var meals: [Meal] {
        
        let firstBreakfast = Food(name: "Cheesecakes", description: "Sweet cheese ball")
        let secondBreakfast = Food(name: "Eggs", description: "Omelet with olives")
        let trirdBreakfast = Food(name: "Humburger", description: "Meat cutlet with cheese and bread")
        let breakfast = Meal(name: "Breakfast", food: [firstBreakfast, secondBreakfast, trirdBreakfast])
        
        let firstLunch = Food(name: "Tuna", description: "Tuna with vegatables")
        let secondLunch = Food(name: "Salmon", description: "Salmon steak with sweet potato puree")
        let trirdLunch = Food(name: "Steak", description: "Steak with potato pie and asparagus")
        let lunch = Meal(name: "Lunch", food: [firstLunch, secondLunch, trirdLunch])
        
        let firstDinner = Food(name: "Brocolli", description: "Steamed broccoli")
        let secondDinner = Food(name: "Turkey", description: "Baked turkey")
        let trirdDinner = Food(name: "Salad", description: "Caesar salad")
        let dinner = Meal(name: "Dinner", food: [firstDinner, secondDinner, trirdDinner])
    
        return [breakfast, lunch, dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCells", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
}
