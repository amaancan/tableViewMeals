//
//  FoodAPI.swift
//  4.5TableViewLabMealTracker
//
//  Created by Amaan on 2017-11-26.
//  Copyright © 2017 Amaan. All rights reserved.
//

import Foundation

class FoodAPI {
    
    var meals: [Meal] {
        //a) Create three Meal objects. Name them "breakfast," "lunch," and "dinner."
        //b) Create three Food objects for the food array on each Meal object. Give each Food item appropriate name for its corresponding meal.
        //c) Return the three Meal objects in an array.
        // TODO: Question - Best place to put this data and good naming convention for it? If code is read top to bottom, is it better to write this at the top?
        
        //breakfast Food
        let eggs = Food(name:"Eggs", description: "Protein")
        let orangeJuice = Food(name:"Orange Juice", description: "Drink")
        let toast = Food(name:"Toast", description: "Carbs")
        
        //lunch Food
        let salad = Food(name:"Salad", description: "Veggies")
        let water = Food(name:"Water", description: "Drink")
        let tofu = Food(name:"Tofu", description: "Protein")
        
        //dinner Food
        let rice = Food(name:"Rice", description: "Carbs")
        let stirFry = Food(name:"Stir Fry", description: "Veggies")
        let icecream = Food(name:"Icecream", description: "Dessert")
        
        //Meals
        let breakfast = Meal(name: "Breakfast", food: [eggs, orangeJuice, toast])
        let lunch = Meal(name: "Lunch", food: [salad, water, tofu])
        let dinner = Meal(name: "Dinner", food: [rice, stirFry, icecream])
        
        return [breakfast, lunch, dinner]
    }

    
    func getMeals () -> [Meal] {
        return meals
    }
}

