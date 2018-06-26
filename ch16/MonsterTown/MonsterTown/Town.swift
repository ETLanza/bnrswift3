//
//  Town.swift
//  MonsterTown
//
//  Created by Eric Lanza on 6/25/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

struct Town {
    var mayor = Mayor()
    let region = "South"
    var population = 5_422{
        didSet(oldPopulation) {
            if oldPopulation > population {
                print("The population has decreased to \(population) from \(oldPopulation)!")
                mayor.tragedyStatement()
            }
        }
    }
    var numberOfStoplights = 4
    
    enum Size {
        case small
        case medium
        case large
    }
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.small
            case 10_001...100_000:
                return Size.medium
            default:
                return Size.large
            }
        }
    }
    
    func printDescription() {
        print("Population: \(population), number of stoplights: \(numberOfStoplights).")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
