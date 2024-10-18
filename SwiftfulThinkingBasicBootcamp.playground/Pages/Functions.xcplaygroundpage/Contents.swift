import Foundation

func myFirstFunction(){
    print("my first function called")
    mySecondFunction()
}

func mySecondFunction() {
    print("My second function")
    myThirdFunction()
}


func myThirdFunction() {
    print("My Third function")
}

myFirstFunction()

func getUserName() -> String {
    let username: String = "Amby"
    return username
}

let name: String = getUserName()
print(name)


func checkIfUserIsPremium() -> Bool {
    return false
}

let check: Bool = checkIfUserIsPremium()
print(check)

// ---------------------------------------------------

showFirstScreen()

func showFirstScreen() {
    var userDidCompleteOnBoarding: Bool = true
    var userProfileIsCreated: Bool = false
    
   let status =  checkUserStatus(userDidCompleteOnBoarding: userDidCompleteOnBoarding, userProfileIsCreated: userProfileIsCreated)
    
    if status == true {
        print("show home screen")
    } else {
        print("show onboarding screen")
    }
}

func checkUserStatus(userDidCompleteOnBoarding: Bool, userProfileIsCreated: Bool) -> Bool {
    if userDidCompleteOnBoarding && userProfileIsCreated {
        return true
    } else {
        return false
    }
    
}


// ----------------------------------------------------------------------------------------------

func doSomething() -> String {
    var title: String = "Avengers"
    
    // if title is equal to avengers
    if title == "Avengers" {
       return "Marvel"
    } else {
        return "Not Marvel"
    }
    
}

doSomething()


// ----------------------------------------------------------------------------------------------

// Guard

func doSomethingElse() {
    var title: String = "Avengers"
    
    // Make sure title == Avengers
    guard title == "Avengers" else  {
        print("not marvel")
        return
    }
    
    print("Marvel")
}


doSomethingElse()


func checkIfTitleIsAvengers() -> Bool {
    var title: String = "Avengers"
    
    // Make sure title == Avengers
    guard title == "Avengers" else  {
        return false
    }
    return true
}




func checkIfTitleIsAvengers2() -> Bool {
    var title: String = "Avengers"
    
    // Make sure title == Avengers
    if title == "Avengers" {
        return true
    } else {
        return false
    }
}


checkIfTitleIsAvengers()
checkIfTitleIsAvengers2()


// Calculated variables are basically functions
// generally good for when you dont need to pass data into the function

let number1 = 5
let number2 = 8

func calculateNumbers() -> Int {
    return number1 + number2
}


func calculateNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: 10, value2: 10)


//
var calculatedNumber: Int {
    return number1 + number2
}


print(calculatedNumber)
