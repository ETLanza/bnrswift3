//
//  main.swift
//  Arrays
//
//  Created by Eric Lanza on 6/24/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

//var bucketList: Array<String>
//var bucketList: [String] = ["Climb Mt. Everest"]
var bucketList = ["Climb Mt. Everest"]
//bucketList.append("Fly hot air ballon to Fiji")
//bucketList.append("Watch the Lord of The Rings Trilogy in one day")
//bucketList.append("Go on a walkabout")
//bucketList.append("Scuba dive in the Great Blue Hole")
//bucketList.append("Find a triple rainbow")
var newItems = ["Fly a hot air ballon to Fiji", "Watch the Lord of The Rings Trilogy in one day",
                "Go on a walkabout", "Scuba dive in the Great Blue Hole", "Find a triple rainbow"]

//for item in newItems {
//    bucketList.append(item)
//}
bucketList += newItems
bucketList.remove(at: 2)
print(bucketList)
print(bucketList.count)
print(bucketList[0...2])
bucketList[2] += " in Australia"
print(bucketList[2])
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList.insert("Toboggan across Alaska", at: 2)
print(bucketList)

var myronsList = ["Climb Mt. Kilimanjaro", "Fly a hot air ballon to Fiji",
                  "Toboggan across Alaska", "Go on a walkabout in Australia",
                  "Scuba dive in the Great Blue Hole", "Find a triple rainbow"]

let equal = (bucketList == myronsList)
print(equal)

let lunches = [ "Cheeseburger",
                "Veggie Pizza",
                "Chicken Caesar Salad",
                "Black Bean Burrito",
                "Falafel Wrap" ]

var toDoList = ["Take out garbage", "Pay Bills", "Cross off finished itmes"]
print(toDoList.isEmpty)

for items in toDoList {
    toDoList.insert(items, at: 0)
    toDoList.remove(at: 3)
}

print(toDoList)

toDoList.reverse()

print(toDoList)

if let fiji = bucketList.index(of: "Fly a hot air ballon to Fiji") {
    print(bucketList[fiji+2])
}

