import Foundation

var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]

print(finalFruits)

let myFruit = finalFruits[1]

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]

print(fruitsSet)

var myFirstDictionary: [String : Bool] = ["Apple": true, "Orange": false]

// this will return nil because there is no value for banana
let item = myFirstDictionary["Banana"]

var anotherDictionary: [Int: String] = [
    0 : "Apple",
    176: "Banana"
]

let item2 = anotherDictionary[176]


// we cannot have two same key
// it can have two of the same values

anotherDictionary[1] = "Mango"
print(anotherDictionary)


anotherDictionary.removeValue(forKey: 176)
print(anotherDictionary)


// when and why should we use array
// when we want to put in specific order
// accessing items in dictionary is really fast

struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}

var postArray: [PostModel] = [
    PostModel(id: "abs121", title: "post 1", likeCount: 5),
    PostModel(id: "abs122", title: "post 2", likeCount: 4),
    PostModel(id: "abs123", title: "post 3", likeCount: 2),
]

if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}


var postDict: [String: PostModel] = [
    "abs121":   PostModel(id: "abs121", title: "post 1", likeCount: 5),
    "abs122" :PostModel(id: "abs12ewe1", title: "post 2", likeCount: 4),
    "abs123": PostModel(id: "abs1e221", title: "post 3", likeCount: 2),
]

let myNewItem = postDict["abs121"]
print(myNewItem)
