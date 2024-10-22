import Foundation

// Enum is the same as struct except, We have all the known cases at runtime

struct CarModel {
   // let brand: String
    let brand: CardBrandOption
    let model: String
}

//var car1: CarModel = CarModel(brand: "Ford", model: "Fiesta")
//var car2: CarModel = CarModel(brand: "Toyota", model: "focus")
//var car3: CarModel = CarModel(brand: "Ford", model: "Camry")


struct CarBrand {
    let title: String
}

//var brand1 = CarBrand(title: "Ford")
//
//var car1 = CarModel(brand: brand1, model: "Fiesta")


// Enums are stored in memory the same way as Struct but we cannot mutate them
enum CardBrandOption {
    case ford
    case toyota
    case honda
    
    var title: String {
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "toyota"
//        case .honda:
//            return "honda"
            
        default:
            return "Default"
        }
        
//        if self == .ford {
//            return "Ford"
//        } else if self == .toyota {
//            return "Toyota"
//        } else {
//            return "Default value"
//        }
    }
}

var car1 = CarModel(brand: .ford, model: "Ford")
var car2 = CarModel(brand: .toyota, model: "Focus")


var fordBrand: CardBrandOption = .ford

print(fordBrand.title)
