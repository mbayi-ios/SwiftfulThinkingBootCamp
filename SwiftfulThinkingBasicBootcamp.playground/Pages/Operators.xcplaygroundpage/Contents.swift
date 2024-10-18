import Foundation


//Addition
//likeCount = likeCount + 1
//
//likeCount += 1

// subtraction
//likeCount = likeCount - 1
//
//likeCount -= 1

//multiplication
//likeCount = likeCount * 1.5
//likeCount *= 1.5

// Division
//likeCount = likeCount / 2
//likeCount /= 2

// Order of Operations does matter
// PEMDAS
//likeCount = likeCount - 1 * 1.5 / 2 + 1

var likeCount: Double = 5

var commentCount: Double = 0

var viewCount: Double = 100

likeCount += 1
print(likeCount)

if likeCount == 5 {
    print("post has 5 likes")
} else {
    print("post doesnt have 5 likes")
}


if likeCount != 5 {
    print("post count is not 5")
}

if likeCount > 5 {
    print("post has greater than 5 likes")
}

if likeCount >= 5 {
    print("post has greater than 5 likes")
}



if (likeCount > 3) && (commentCount > 0) {
    print("post has more greater than three likes and greater than zero comments")
} else {
    print("post has 3 or less likes or post has zero or less comment")
    
}


if likeCount > 3  || commentCount > 0 {
    print("post has greater than 3 likes OR greater than 0 comments")
} else {
    print("Post has 3 or less likes AND post has 0 or less comments")
}


var userIsPremium: Bool = true
var userIsNew: Bool = false

if userIsPremium == true && userIsNew == true {
    
}

// shorthand

if userIsPremium && userIsNew {
    
}
