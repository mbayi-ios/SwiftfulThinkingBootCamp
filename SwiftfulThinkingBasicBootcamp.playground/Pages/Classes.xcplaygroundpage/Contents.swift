import Foundation

// Classes are slow!
// Classes are stored in Heap (memory)
// objects in the Heap are reference types
// Reference types point to an object in memory and update the object in memory

// All the datea that is needed for some screen
class ScreenViewModel {
    let title: String
    private(set) var showButton: Bool
    
    // same init as a struct, except structs have implicit inits
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // this runs as the object is being removed from memory
        // structs dont have deinit!
    }
    
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    }
}


// Notice that we are using a "let", because:
// the object itself is not changing
// the data inside the object is changing

let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)
let value = viewModel.showButton

viewModel.hideButton()
viewModel.updateShowButton(newValue: false)
