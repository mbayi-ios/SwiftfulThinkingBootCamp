import Foundation

// There is always a value and it is a Boolean(true, false)
let myBool: Bool = false

// we dont know if there is a value, but if there is, it is a Boolean(true, false, nil)
var myOtherBool: Bool? = true

//print(myOtherBool)
//myOtherBool = true
//print(myOtherBool)
//myOtherBool = false
//print(myOtherBool )
//myOtherBool = nil
//print(myOtherBool)

// How to unwrap optional
// 1. nil coalescing operator
let newValue: Bool? = myOtherBool

// The value of myOtherBool (if there is one), otherwise false
let newValue2: Bool = myOtherBool ?? false

print("new value 2: \(newValue2.description)")

var myString: String? = "hello amby"


print(myString ?? "there is no value")

myString = "New Text!"

let newString = myString ?? "some default value"

// --------------------------------------------------------------------------

var userIsPremium: Bool? = nil

@MainActor
func checkIfuserIsPremium() -> Bool? {
    return userIsPremium
}

@MainActor
func checkIfuserIsPremium2() -> Bool {
    return userIsPremium ?? false
}

let isPremium = checkIfuserIsPremium2()



// 2. If-let
// when if-let is successful, enter the closure
@MainActor
func checkIfuserIsPremium3() -> Bool? {
    
    // if there is a value, then let the newValue equal that value
    if let newValue = userIsPremium {
        // Here we have access to the non-optional value
        return newValue
    } else {
        return false
    }
}


@MainActor
func checkIfUserIsPremium4() -> Bool {
    if let newValue = userIsPremium {
        return newValue
    }
    
    return false
}

@MainActor
func checkIfPremium5() -> Bool {
    if let userIsPremium {
        return userIsPremium
    }
    
    return false
}


// 3. Guard
// when a guard is a failure, enter the closure
@MainActor
func checkIfUserIsPremium6() -> Bool {
    
    // make sure there is a value
    // If there is a value, let newValue equal that value
    // else (otherwise) return out of the function
    guard let newValue = userIsPremium else {
        return false
    }
    
    
    // here we have access to the non-optional value
    return newValue
}

@MainActor
func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    
    return userIsPremium
}


// -----------
var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil

@MainActor
func checkIfUserIsSetUp() -> Bool {
    if let isNew = userIsNew, let didCompleteOnboarding = userDidCompleteOnboarding, let favoriteMovie = userFavoriteMovie {
        // userIsNew == Bool AND
        // userDidCompleteOnBoarding == Bool AND
        // userFavoriteMovie == String
        
        return getUserStatus(
            userIsNew: isNew,
            userDidCompleteOnboarding: didCompleteOnboarding,
            userFavoriteMovie: favoriteMovie
        )
    } else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie = nil
        return false
    }
}

@MainActor
func checkIsUserIsSetUp2() -> Bool {
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie = nil
        return false
    }
    // userIsNew == Bool AND
    // userDidCompleteOnBoarding == Bool AND
    // userFavoriteMovie == String
    
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
    
}

@MainActor
func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String)-> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    
    return false
}



// When should we use guard and when should you use if-let statement.


// layered if-let
@MainActor
func checkIfUserIsSetUp3() -> Bool {
    if let userIsNew {
        // UserIsNew == Bool
        if let userDidCompleteOnboarding {
            // userDidCompleteOnboading == Bool
            
            if let userFavoriteMovie {
                // userFavoriteMovie == String
                return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteOnboarding: userDidCompleteOnboarding,
                    userFavoriteMovie: userFavoriteMovie
                )
            } else {
                // userFavoriteMovie == nil
                return false
            }
        } else {
            // userDidCompleteOnboarding == nil
            return false
        }
    } else {
        // userIsNew == nil
        return false
    }
}


// layered guard Statement

@MainActor
func checkIfUserIsSetUp4() -> Bool {
    guard let userIsNew else {
        // userIsNew == nil
        return false
    }
    // userIsNew == Bool
    guard let userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == nil
        return false
    }
    // userDidCompleteOnboarding == Bool
    
    guard let userFavoriteMovie else {
        // userFavoriteMovie == nil
        return false
    }
    
    //userFavoriteMovie == String
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}

@MainActor
func checkIfUserIsSetUp5() -> Bool {
    guard let userIsNew else {
        return false
    }
    guard let userDidCompleteOnboarding else {
        return false
    }
    
    guard let userFavoriteMovie else {
        return false
    }
    
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}


// Optional Chaining

func getUserName() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}


func getUserData() {
    let username: String? = getUserName()
    
    // I will get the count if the username is not nil
    let count = username?.count
    
    let title: String = getTitle()
    
    // i will get the count always
    let count2 = title.count
    
    // if username has a value, and first character in username has a value, then return the value of isLowercase
    // optional chaining
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
    
    // if i will get the count because i know 100% that the username is not nil
    // this will crash your application if username is nil!
    let count3: Int = username!.count
}

// safely unwrap an optional
// nil - coalescing
// if let
// guard


// explicitly unwrap optional
