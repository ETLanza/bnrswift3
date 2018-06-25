//
//  Vampire.swift
//  MonsterTown
//
//  Created by Eric Lanza on 6/25/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

class Vampire: Monster {
    var vampireThralls: [Vampire] = []
    
    override func terrorizeTown() {
        town?.changePopulation(by: -1)
        let newThrall = Vampire()
        vampireThralls.append(newThrall)
        super.terrorizeTown()
    }
    
}
