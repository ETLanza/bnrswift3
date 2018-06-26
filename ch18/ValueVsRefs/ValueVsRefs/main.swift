//
//  main.swift
//  ValueVsRefs
//
//  Created by Eric Lanza on 6/26/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

var str = "Hello, playground"
var playgroundGreeting = str
playgroundGreeting += "! How are you today?"
print(str)


class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let hecate = GreekGod(name: "Hecate")
let anotherHecate = hecate
anotherHecate.name = "AnotherHecate"
print(anotherHecate.name)
print(hecate.name)

struct Pantheon {
    var chiefGod: GreekGod
}

let pantheon = Pantheon(chiefGod: hecate)
let zeus = GreekGod(name: "Zeus")
//pantheon.chiefGod = zeus
zeus.name = "Zeus Jr."
print(zeus.name)

print(pantheon.chiefGod.name)
let greekPantheon = pantheon
hecate.name = "Trivia"
print(greekPantheon.chiefGod.name)

let athena = GreekGod(name: "Athena")

let gods = [athena, hecate, zeus]
let godsCopy = gods
gods.last?.name = "Jupiter"
print(gods)
print(godsCopy)

