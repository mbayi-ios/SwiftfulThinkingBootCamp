import Foundation

// structs are fast!
// Struct are stored in the stack(memory)
// objects in the stack are value types
// value types are copied and mutated

struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    // Structs have an implicit init
    
//    init(title: String, dateCreated: Date) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
//    init(title: String, dateCreated: Date = .now) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
//    init(title: String, dateCreated: Date = .now, isPremium: Bool?) {
//        self.title = title
//        self.dateCreated = dateCreated
//        self.isPremium = isPremium
//    }
    
    init(title: String, dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    }
    
}

let myObject: String = "Hello, World"

//let myQuiz: Quiz = Quiz(title: "Swift", dateCreated: Date())

//let myQuiz: Quiz = Quiz(title: "kenya")

//let myQuiz: Quiz = Quiz(title: "kenya 1", isPremium: true)

let myQuiz: Quiz = Quiz(title: "kenya 1", dateCreated: nil,  isPremium: true)

print(myQuiz.title)
print(myQuiz.dateCreated)


// -------------------------------------------------------------------------------------------------------------

// Immutable struct = all "let" constants = NOT mutable = "cannot mutate it!"
struct UserModel {
    let name: String
    let isPremium: Bool
}


var user1: UserModel = UserModel(name: "amby", isPremium: false)

@MainActor
func markUserAsPremium() {
    print(user1)
    
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

//markUserAsPremium()


// -------------------------------------------------------------------------------------------------------------


// "mutable struct"
struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Amby", isPremium: false)

@MainActor
func markUserAsPremium2() {
    print(user2)
    
    // "mutate the struct
    user2.isPremium = true
    print(user2)
    
}

markUserAsPremium2()


// -------------------------------------------------------------------------------------------------------------

// "immutable struct"
struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func markUserAsPremium(newValue: Bool) -> UserModel3 {
        return UserModel3(name: name, isPremium: newValue)
    }
}


var user3: UserModel3 = UserModel3(name: "amby", isPremium: true)
user3 = user3.markUserAsPremium(newValue: true)


// -------------------------------------------------------------------------------------------------------------

// "mutable struct"

struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool
    
    mutating func markUserAsPremium() {
        isPremium = true
    }
    
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}
