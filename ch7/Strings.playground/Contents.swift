import UIKit

let playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"

for c: Character in mutablePlayground {
    print("\(c)")
}

let oneCoolDude = "\u{1F60E}"
let aAcute = "\u{0061}\u{0301}"

for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

let aAcutePrecomposed = "\u{00E1}"

let b = (aAcute + aAcutePrecomposed) //true

print("aAcute: \(aAcute.count); aAcutePrecomposed: \(aAcutePrecomposed.count)")

let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end] // "o"
let range = start...end
let firstFive = playground[range] //"Hello"


let empty = ""

if empty.isEmpty {
    print("empty is truly empty")
}

let startingIndex = empty.startIndex
let endingIndex = empty.endIndex
if startingIndex == endingIndex{
    print("empty is truly empty")
}

let helloString = "\u{0048}\u{0065}\u{006c}\u{006c}\u{006f}"
