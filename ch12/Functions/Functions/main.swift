//
//  main.swift
//  Functions
//
//  Created by Eric Lanza on 6/24/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

func printGreeting() {
    print("Hello, command line tool!")
}
printGreeting()

//func printPersonalGreeting(to name: String) {
//    print("Hello \(name), welcome to the command line tool!")
//}
//printPersonalGreeting(to: "Eric")

func printPersonalGreeting(to names: String...) {
    for name in names {
    print("Hello \(name), welcome to the command line tool!")
    }
}
printPersonalGreeting(to: "Eric", "Alex", "Dave", "Matt")

//func divisionDescriptionFor(numerator: Double, denominator: Double) {
//    print("\(numerator) divided by \(denominator) is \(numerator / denominator)")
//}
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0)

//func divisionDescriptionFor(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") {
//    print("\(numerator) divided by \(denominator) is \(numerator / denominator)\(punctuation)")
//}
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!")

func divisionDescriptionFor(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") -> String {
    return "\(numerator) divided by \(denominator) is \(numerator / denominator)\(punctuation)"
}
print(divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!"))


var error = "The request failed:"
func appendErrorCode(_ code : Int, toErrorString errorString: inout String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
print(error)

func areaOfTriangle(base: Double, height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}

print(areaOfTriangle(base: 3.0, height: 5.0))

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

let aBunchOfNumbers = [10, 1, 4, 3, 57, 43, 84, 27, 56, 111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are \(theSortedNumbers.evens) and the odd numbers are \(theSortedNumbers.odds).")

func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1
}

let middleName = grabMiddleName(fromFullName: ("Matt", "Mathews", "Mathias"))
if let theName = middleName {
    print(theName)
}

func greetyByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle, middleName.count >= 4 else {
        print("Hey there!")
        return
    }
    print("Hey, \(middleName)")
}
greetyByMiddleName(fromFullName: ("Matt", "Danger", "Mathias"))

let evenOddFunction: ([Int]) -> ([Int], [Int]) = sortedEvenOddNumbers

func siftBeans(fromGroceryList list: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    
    for item in list {
        if item.hasSuffix("beans") {
            beans.append(item)
        } else {
            otherGroceries.append(item)
        }
    }
    return (beans, otherGroceries)
}

let result = siftBeans(fromGroceryList: ["green beans",
                                         "milk",
                                         "black beans",
                                         "pinto beans",
                                         "apples"])
print(result.beans)
print(result.otherGroceries)



