//
//  main.swift
//  ch10Silver
//
//  Created by Eric Lanza on 6/24/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

var georgia = ["Brown": [11111, 22222, 33333, 44444, 55555],
               "Blue": [66666, 77777, 88888, 99999, 33434],
               "Green": [12345, 67890, 54321, 90876, 90210]]
if let brown = georgia["Brown"], let blue = georgia["Blue"], let green = georgia["Green"] {
print("""
    Georgia has the following zipcodes: \(brown)\n                                    \(blue)\n                                    \(green)
    """)
}



