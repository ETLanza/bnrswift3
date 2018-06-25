//
//  main.swift
//  MonsterTown
//
//  Created by Eric Lanza on 6/25/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

var myTown = Town()
myTown.changePopulation(by: 500)
myTown.printDescription()

let genericMonster = Monster()
genericMonster.town = myTown
genericMonster.terrorizeTown()

let fredTheZomie = Zombie()
fredTheZomie.town = myTown
fredTheZomie.terrorizeTown()
fredTheZomie.town?.printDescription()

let masterVampire = Vampire()
masterVampire.town = myTown
masterVampire.terrorizeTown()
masterVampire.town?.printDescription()

