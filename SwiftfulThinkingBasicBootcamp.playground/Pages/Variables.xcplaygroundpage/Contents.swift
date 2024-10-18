
import Foundation

// constant - the value of this cannot change
let someConstant: Bool = true

// variable - the value of this can change
var someVariable: Bool = true

//cannot assign to value: 'someConstant' is a 'let' constant
//someConstant = false


someVariable = false

// declaring myNumber as a Double
var myNumber = 1.323
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 3232
print(myNumber)
myNumber = 32
print(myNumber)


// if statements

var userIsPremium: Bool = false


if userIsPremium == true {
    print("this is correct - user is premium")
} else {
    print("user is not premium")
}

// shorthand
if userIsPremium {
    print("shorthand version")
}

if userIsPremium == false {
    print("this is false - user is not premium")
}

//shorthand
if !userIsPremium {
    print("this is shorthand")
}
