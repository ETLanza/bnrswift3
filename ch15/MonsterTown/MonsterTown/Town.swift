//
//  Town.swift
//  MonsterTown
//
//  Created by Eric Lanza on 6/25/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

struct Town {
    var population = 5_422
    var numberOfStoplights = 4
    
    func printDescription() {
        print("Population: \(population), number of stoplights: \(numberOfStoplights).")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
