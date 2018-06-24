import UIKit

for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print (i)
    }
}

print("\n")

for i in 1...100 {
    let fizzBuzzTuple = (i % 3, i % 5)
    switch fizzBuzzTuple {
    case (0, 0):
        print("FizzBuzz")
    case (0, _):
        print("Fizz")
    case(_, 0):
        print("Buzz")
    default:
        print(i)
    }
}
