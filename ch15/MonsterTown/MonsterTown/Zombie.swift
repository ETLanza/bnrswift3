//
//  Zombie.swift
//  MonsterTown
//
//  Created by Eric Lanza on 6/25/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    override func terrorizeTown() {
        if let popCheck = town?.population, popCheck < 10 {
            town?.population = 0
        } else {
        town?.changePopulation(by: -10)
        }
        super.terrorizeTown()
    }
}
