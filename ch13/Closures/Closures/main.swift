//
//  main.swift
//  Closures
//
//  Created by Eric Lanza on 6/24/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

let volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

//func sortAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j
//}
//let volunteersSorted = volunteerCounts.sorted(by: sortAscending)

//let volunteersSorted = volunteerCounts.sorted(by: {(i: Int, j: Int) -> Bool in
//    return i < j
//})

//let volunteersSorted = volunteerCounts.sorted(by: {i, j in i < j})

//let volunteersSorted = volunteerCounts.sorted(by: { $0 < $1})

//let volunteersSorted = volunteerCounts.sorted { $0 < $1 }

let volunteersSorted = volunteerCounts.sorted()
print(volunteerCounts.sorted())

//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
//        return lights + existingLights
//    }
//    return buildRoads
//}
//
//var stopLights = 4
//let townPlanByAddingLightsToExistngLights = makeTownGrand()
//stopLights = townPlanByAddingLightsToExistngLights(4, stopLights)
//print("Knowhere has \(stopLights) stoplights.")

func makeTownGreat(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}
func evaluate(budget: Int) -> Bool {
    return budget > 10_000
}

var stoplights = 4
if let townPlanByAddingLightsToExistingLights = makeTownGreat(withBudget: 10_500, condition: evaluate) {
    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
}
print("Knowhere has \(stoplights) stoplights.")

func makePopulationTracket(forInitialPopulation population: Int) -> (Int) -> (Int) {
    var totalPopulation = population
    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
}

var currentPopulation = 5_422
let growBy = makePopulationTracket(forInitialPopulation: currentPopulation)

print(growBy(500))
print(growBy(500))
print(growBy(500))
currentPopulation = growBy(500)
print(currentPopulation)
let anotherGrowBy = growBy
print(anotherGrowBy(500))

var bigCityPopulation = 4_061_981
let bigCityGrowBy = makePopulationTracket(forInitialPopulation: bigCityPopulation)
bigCityPopulation = bigCityGrowBy(10_000)
print(currentPopulation)

let precinctPopulations = [1244, 2021, 2157]

let projectedPopulations = precinctPopulations.map { (population: Int) -> Int in
    return population * 2
}
print(projectedPopulations)

let bigProjections = projectedPopulations.filter { (population: Int) -> Bool in
    return population > 4000
}
print(bigProjections)

let totalProjection = projectedPopulations.reduce(0){
    (accumulatedProjections: Int, precinctProjection: Int) -> Int in
    return accumulatedProjections + precinctProjection
}
print(totalProjection)

let goldChallenge = projectedPopulations.reduce(0) {$0 + $1}
print(goldChallenge)

let goldChallenge2 = precinctPopulations.map {$0 * 2}
print(goldChallenge2)

let goldChallenge3 = projectedPopulations.filter {$0 > 4000}
print(goldChallenge3)
