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
//    var walksWithLimp = true
    var walksWithLimp: Bool
//    private(set) var isFallingApart = false
    private(set) var isFallingApart: Bool
    
    init?(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    convenience init?(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp{
            print("This zombie has a bad knee")
        }
    }
    
    
    required convenience init?(town: Town?, monsterName: String) {
        self.init(limp:false, fallingApart:false, town:town, monsterName: monsterName)
    }
    
    deinit {
        print("Zombie named \(name) is no longer with us.")
    }
    
    final override func terrorizeTown() {
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
