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
errorDescription

upCaseErrorDescription?.append("PLEASE TRY AGAIN.")
upCaseErrorDescription
