import Foundation

struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "amby", isPremium: true, order: 40),
    DatabaseUser(name: "samatha", isPremium: false, order: 4),
    DatabaseUser(name: "ben", isPremium: true, order: 412),
    DatabaseUser(name: "chris", isPremium: false, order: 34)
    
]

// -------- FILTER

//var allPremiumUsers: [DatabaseUser] = []
//
//for user in allUsers {
//    if user.isPremium {
//        allPremiumUsers.append(user)
//    }
//}


//var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
//    if user.isPremium {
//        return true
//    } else {
//        return false
//    }
//}

//var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
//    return user.isPremium
//}

var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
     user.isPremium
}

print(allPremiumUsers)

var allPremiumUsers2: [DatabaseUser] = allUsers.filter({ $0.isPremium })
print(allPremiumUsers2)


// -------- SORT

var orderedUsers: [DatabaseUser] = allUsers.sorted { user1, user2 in
    return user1.order < user2.order
}
print(orderedUsers)

var orderedUsers2: [DatabaseUser] = allUsers.sorted(by: {$0.order < $1.order })
print(orderedUsers2)


// -------- MAP

var userNames: [String] = allUsers.map{ user in
    return user.name
}
    
print(userNames)

var userNames2: [String] = allUsers.map ({ $0.name })

print(userNames2)

