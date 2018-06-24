//
//  main.swift
//  Optionals
//
//  Created by Eric Lanza on 6/23/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?
//print(errorCodeString)
if errorCodeString != nil {
    let theError = errorCodeString!
    print(theError)
}

if let theError = errorCodeString, let errorCodeInteger = Int(theError),
    errorCodeInteger == 404 {
    errorDescription = "\(errorCodeInteger + 200): resource was not found."
}

var upCaseErrorDescription = errorDescription?.uppercased()
print(errorDescription!)

upCaseErrorDescription?.append("PLEASE TRY AGAIN.")
print(upCaseErrorDescription!)

//let description: String
//if let errorDescription = errorDescription{
//    description = errorDescription
//} else {
//    description = "No error"
//}

let description = errorDescription ?? "No error"

//let forcedError: String? = nil
//print(forcedError!)


