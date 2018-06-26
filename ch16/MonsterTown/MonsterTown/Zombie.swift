//
//  Zombie.swift
//  MonsterTown
//
//  Created by Eric Lanza on 6/25/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    var walksWithLimp = true
    private(set) var isFallingApart = false
    
    override func terrorizeTown() {
        if let popCheck = town?.population, popCheck < 10 {
            if !isFallingApart {
                town?.changePopulation(by: -10)
            }
        } else {
        town?.changePopulation(by: -10)
        }
        super.terrorizeTown()
    }
}
