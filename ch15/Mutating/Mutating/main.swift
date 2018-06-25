//
//  main.swift
//  Mutating
//
//  Created by Eric Lanza on 6/25/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

func greet(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}
let personalGreeting = greet(name: "Matt", withGreeting: "Hello,")
print(personalGreeting)

//func greeting(forName name: String) -> (String) -> String {
//    func greeting(_ greeting: String) -> String {
//        return "\(greeting) \(name)"
//    }
//    return greeting
//}
//
//let friendlyGreetingFor = greeting("Hello,")
//let mattGreeting = friendlyGreetingFor("Matt")

func greeting(_ greeting: String) -> (String) -> String {
    return { (name: String) -> String in
        return "\(greeting) \(name)"
    }
}
let friendlyGreetingFor = greeting("Hello,")
let mattGreeting = friendlyGreetingFor("Matt")
print(mattGreeting)

struct Person {
    var firstName = "Matt"
    var lastName = "Mathias"
    mutating func changeTo(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
var p = Person()
let changeName = Person.changeTo
let changeNameFromMattTo = changeName(&p)
changeNameFromMattTo("John", "Gallagher")
print(p.firstName) // "John"
