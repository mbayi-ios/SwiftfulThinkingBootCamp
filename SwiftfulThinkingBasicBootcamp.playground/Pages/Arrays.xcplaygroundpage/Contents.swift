import Foundation

// Arrays, Sets

var myTitle: String = "hello world"
var myTitle2: String = "Hello, world!"

// Tuple
func doSomething(value: (title1: String, title2: String)) {
    
}

doSomething(value: (myTitle, myTitle2))

// Custom data model
struct TitlesModel {
    let title1: String
    let title2: String
}

func doSomething(value: TitlesModel) {
    
}

doSomething(value: TitlesModel(title1: myTitle, title2: myTitle2))

// ------------------------------------------------------------------------------------------------------------

let apple = "Apple"
let orange = "Orange"

let fruits: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple,orange]
let fruits3: Array<String> = [apple, orange]

let myBools: [Bool] = [true, false, true, true, false]

func doSomething(value: [String]) {
    
}


var fruitsArray: [String] = ["Apple", "Orange", "Banana", "Mango"]

let count = fruitsArray.count
print(count)

let firstItem = fruitsArray.first
let lastItem = fruitsArray.last

if let firstItem = fruitsArray.first {
    // use first item
}

fruitsArray = fruitsArray + ["Kiwi", "mango"]
//print(fruitsArray)

fruitsArray.append("juice")
//print(fruitsArray)

//fruitsArray.append(contentsOf: ["Kariuki", "Kandk"])
print(fruitsArray)

// Count   = 1, 2, 3, 4
// Indexes = 0, 1, 2, 3

//fruitsArray[0]

let firstIndex = fruitsArray.indices.first
let lastIndex = fruitsArray.indices.last

//fruitsArray[10]

if fruitsArray.indices.contains(10) {
    let item = fruitsArray[10]
}

fruitsArray.append("Watermelon")
print(fruitsArray)

fruitsArray.insert("kamilo", at: 5)

print(fruitsArray)

fruitsArray.insert(contentsOf: ["maindi", "beans"], at: 2)
print(fruitsArray)


fruitsArray.remove(at: 3)
print(fruitsArray)


fruitsArray.removeAll()
print(fruitsArray)


struct ProductModel {
    let title: String
    let price: Int
}

var myProducts = [
    ProductModel(title: "product 1", price: 50),
    ProductModel(title: "product 2", price: 40),
    ProductModel(title: "product 3", price: 63),
    ProductModel(title: "product 4", price: 13)
]

print(myProducts.count)


var finalFruits: [String] = ["apple", "orange", "banana", "apple"]
print(finalFruits)


// SETS
var fruitsSet: Set<String> = ["apple", "orange", "banana", "apple"]
print(fruitsSet)
