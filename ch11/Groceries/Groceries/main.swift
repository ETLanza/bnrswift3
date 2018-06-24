//
//  main.swift
//  Groceries
//
//  Created by Eric Lanza on 6/24/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

//var groceryBag = Set<String>()
//var groceryBag = Set(["Apples", "Oranges", "Pineapples"])
var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
//groceryBag.insert("Apples")
//groceryBag.insert("Oranges")
//groceryBag.insert("Pineapples")

for food in groceryBag {
    print(food)
}

let hasBananas = groceryBag.contains("Bananas")
let friendsGroceryBag: Set = ["Bananas", "Cereal", "Milk", "Oranges"]
let commonGrocerybag = groceryBag.union(friendsGroceryBag)

let roommatesGroceryBag: Set = ["Apples", "Bananas", "Cereal", "Toothpaste"]
let itemsToReturn = commonGrocerybag.intersection(roommatesGroceryBag)
print(itemsToReturn)

let yourSecondBag: Set = ["Berries", "Yogurt"]
let roommatesSecondBag: Set = ["Grapes", "Honey"]
let disjoint = yourSecondBag.isDisjoint(with: roommatesSecondBag)

let myCities: Set = ["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"]
let yourCities: Set = ["Chicago", "San Francisco", "Jacksonville"]

let subset = myCities.isSuperset(of: yourCities)
print(subset)

var groceryBag2: Set = ["Apples", "Oranges", "Pineapple"]
let friendsGroceryBag2: Set = ["Bananas", "Cereal", "Milk", "Oranges"]

groceryBag2.formUnion(friendsGroceryBag2)
print(groceryBag2)

var groceryBag3: Set = ["Apples", "Oranges", "Pineapple"]
var friendsGroceryBag3: Set = ["Bananas", "Cereal", "Milk", "Oranges"]
groceryBag3.formIntersection(friendsGroceryBag3)
print(groceryBag3)



