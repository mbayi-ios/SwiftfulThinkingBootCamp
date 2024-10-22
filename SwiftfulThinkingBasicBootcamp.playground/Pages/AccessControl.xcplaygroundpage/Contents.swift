import Foundation

// Rule of thumb:
// we want everything to be as private as possible
// This make your code easier to read/debug ans is good coding practice

struct MovieModel {
    let title: String
    let genre: MovieGenre
    //let isFavorite: Bool
    private(set)  var isFavorite: Bool
    
    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    
    mutating func updateFavoriteStatus2(newValue: Bool) {
        isFavorite = newValue
    }
}

enum MovieGenre {
    case comedy, action, horror
}

class MovieManager {
    // public
    public var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    
    // private
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavorite: false)
    
    // read is public, set is private
   private(set) var movie3 = MovieModel(title: "Avangers", genre: .action, isFavorite: false)
    
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatus2(newValue: isFavorite)
    }
}


let manager = MovieManager()

//manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)

manager.movie1.updateFavoriteStatus2(newValue: true)
print(manager.movie1)

//VERSION 1
// We can GET and SET the value from outside the object
let movie1 = manager.movie1
manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)

// VERSION 2
// We can't GET or SET the value from outside the object
// "cannot access"
let movie2 = manager.movie2
manager.movie2 = manager.movie2.updateFavoriteStatus(newValue: true)

// VERSION 3
// We can GET the value from outside the object, but we can't SET the value from outside the object.
// "best practice"
let movie3 = manager.movie3
// manager.movi

// Note: private & public are by far the most common but there are many others
// open
// public
// internal
// fileprivate
// private
