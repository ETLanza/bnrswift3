//
//  Mayor.swift
//  MonsterTown
//
//  Created by Eric Lanza on 6/25/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

struct Mayor {
    private var anxietyLevel = 0
    
    private mutating func increaseAnxiety() {
        anxietyLevel += 1
            }

    mutating func tragedyStatement() {
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence.")
        increaseAnxiety()
    }
}
