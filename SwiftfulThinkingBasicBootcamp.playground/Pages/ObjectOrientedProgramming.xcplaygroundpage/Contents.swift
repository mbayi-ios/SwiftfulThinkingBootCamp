import Foundation
/*
 // Object Oriented Programming
 
  // During the life of an app, we create and destroy objects
 // Create = Initialize (init) = Allocate (add to memory)
 // Destroy = Denitialize (deinit) = Deallocate (remove from memory)
 
 // Automatic Reference Counting(ARC)
 // This is a live count of the number of objects in memory
 // Create 1 object, count goes up by 1
 // crete 2 objects, count goes up by 2
 // Destroy 1 object, count goes down by 1
 
 // The more objects in memory, the slower the app performs
 // We want to keep the ARC count as low as possible
 // We want to create objects only when we need them
 // And destroy them as soon as we no longer need them
 
 // For example, if an app has 2 screens and user is moving from screen 1 to screen 2. We only want to allocate screen 2 WHEN we need it (i.e when the user clicks a button to segue to screen 2). When we get to screen 2, we may want to deallocate screen 1
 
 
 // There are 2 types of memory
 // Stack & Heap
 // Only objects in the Heap are counted towards ARC
 
 // Objects in the Stack
 // Strings, Bool, Int, most basic types
 // NEW: Structs, Enum
 
 // objects in the Heap
 // functions
 // NEW: classes, Actors
 
 // iPhone is a "multi-threaded environment"
 // There are multiple "threads" or "engines" running simultaneously
 // each thread has a stack
 // but there is only 1 Heap for all threads
 
 // Therefore:
 // Stack is faster, lower memory footprint, preferable
 // Heap is slower, higher memory footprint, risk of threading issues
 
 // Value Vs Reference types
 
 // Objects in the Stack are "Value" types.
 // When you edit a Value type, you create a copy of it with new data.
 
 // Objects in the Heap are "Reference" types.
 // when you edit a Reference type, you actually edit the object that you are referencing. This "reference" is actually called "pointer" because it "points" to an object in the Heap (in memory).
 
 */


struct MyFirstObject {
    let title: String = "Hello amby"
}

class MySecondObject {
    let title: String = "Helo amby"
}


// class vs struct explained to a 5-year old

// Imagine a school and in the school there are classrooms
// within each class, there are quizes
// during the day the teacher will hand out many different quizzes to different clases. The student will ansaw


// we want to use a class for things like:
// "Manager" "DataService" "Service" "Factory" "ViewModel"
// These are objects that we create and want to perform actions inside

// We want to use a struct for things like:
// Data models
// objects that we create and pass around our app
