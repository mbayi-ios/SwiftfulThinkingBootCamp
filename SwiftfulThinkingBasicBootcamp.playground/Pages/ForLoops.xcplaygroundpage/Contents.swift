import Foundation

for item in 0..<101 {
  //  print(item)
}


let myArray = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon"]

var secondArray: [String] = []

for item in myArray {
    print(item )
    
    if item == "Gamma" {
        secondArray.append(item)
    }
}

print(secondArray)

struct LessonModel {
    let title: String
    let isFavorite: Bool
}

let allLessons = [
    LessonModel(title: "Lesson 1", isFavorite: true),
    LessonModel(title: "Lesson 2", isFavorite: false),
    LessonModel(title: "Lesson 3", isFavorite: true),
    LessonModel(title: "Lesson 4", isFavorite: false),
    LessonModel(title: "Lesson 5", isFavorite: true),
    LessonModel(title: "Lesson 6", isFavorite: false)
]

var favoriteLessons: [LessonModel] = []
for lesson in allLessons {
    if lesson.isFavorite {
        favoriteLessons.append(lesson)
    }
}

print(favoriteLessons)


for (index, lesson) in allLessons.enumerated() {
    
    if index == 1 {
        continue
    }
    
    print("index : \(index) || is \(lesson)")
}

print("----------------------------------------------------------------------")

for (index, lesson) in allLessons.enumerated() {
    
    if index == 3 {
        break
    }
    
    print("index : \(index) || is \(lesson)")
}
