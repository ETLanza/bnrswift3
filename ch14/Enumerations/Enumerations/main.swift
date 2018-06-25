//
//  main.swift
//  Enumerations
//
//  Created by Eric Lanza on 6/25/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

enum TextAlignment: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

//var alignment: TextAlignment = TextAlignment.left
//var alignment = TextAlignment.left
//alignment = .right
var alignment = TextAlignment.justify
//if alignment == .right {
//    print("We should right-align the text!")
//}


print("Left has raw value \(TextAlignment.left.rawValue)")
print("Right has raw value \(TextAlignment.right.rawValue)")
print("Center has raw value \(TextAlignment.center.rawValue)")
print("Justify has raw value \(TextAlignment.justify.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")

let myRawValue = 100
if let _ = TextAlignment(rawValue: myRawValue) {
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    print("\(myRawValue) has no corresponding TextAlignment case")
}


switch alignment {
case .left:
    print("left aligned")
    
case .right:
    print("right aligned")
    
    //case .center:
//default:
case .center:
    print("center aligned")
    
case .justify:
    print("justified")
}

enum ProgrammingLanguage: String {
    case swift
    case objectiveC = "objective-c"
    case c
    case cpp = "c++"
    case java
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

enum Lightbulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on }
    }
}


var bulb = Lightbulb.on
let ambientTemperature = 77.0
var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature:
    ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()

enum ShapeDimensions {
    case point
    
    case square(side: Double)
    
    case rectangle(width: Double, height: Double)
    
    case triangle(side1: Double, side2: Double, side3: Double)
    
    func area() -> Double {
        switch self {
        case let .triangle(side1: s1, side2: s2, side3: s3):
            return (s1 + s2 + s3) / 2

        case .point:
            return 0
            
        case let .square(side: side):
            return side * side
            
        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
    
    func perimeter() -> Double {
        switch self {
        case let .triangle(side1: s1, side2: s2, side3: s3):
            return s1 + s2 + s3
        case .point:
            return 0
            
        case let .square(side: side):
            return side * 4
            
        case let .rectangle(width: w, height: h):
            return (2 * w) + (2 * h)
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")

 enum FamilyTree {
    case noKnownParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
                                  motherName: String, motherAncestors: FamilyTree)
}

let fredsAncestors = FamilyTree.twoKnownParents(
    fatherName: "Fred Sr.",
    fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents),
    motherName: "Marsha",
    motherAncestors: .noKnownParents)
















