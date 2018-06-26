//
//  main.swift
//  MonsterTown
//
//  Created by Eric Lanza on 6/25/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

var myTown = Town(population: 0, stoplights: 6)
myTown?.printDescription()
let myTownSize = myTown?.townSize
print(myTownSize)
myTown?.changePopulation(by: 1_000_000)
print("Size: \(myTown?.townSize)")
myTown?.printDescription()

//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town:  myTown, monsterName: "Fred")
fredTheZombie?.town = myTown
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

var convienentZombie = Zombie(limp: true, fallingApart: false)

//let masterVampire = Vampire()
//masterVampire.town = myTown
//masterVampire.terrorizeTown()
//masterVampire.town?.printDescription()

print("Victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("Victim pool: \(fredTheZombie?.victimPool); population: \(fredTheZombie?.town?.population)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}

fredTheZombie = nil
