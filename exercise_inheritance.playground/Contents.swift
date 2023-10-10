class Dish {
    private let ingredients : String
    private let name : String
    
    init(ingredients: String, name: String) {
        self.ingredients = ingredients
        self.name = name
    }
    
    func printInfo(){
        print(name)
        print(ingredients)
    }
}

final class AppetizerDish: Dish {
    override func printInfo() {
        print("Category: appetizer")
        super.printInfo()
    }
}

final class MainDish: Dish {
    override func printInfo() {
            super.printInfo()
            print("Category: Main Dish")
        }
}

for _ in 1...5 {
    let randomNumber = Int.random(in: 0...1)
    let dish: Dish
    if randomNumber == 0 {
        dish = AppetizerDish(ingredients: "Margherita, Flatbread", name: "Margherita Flatbread")
//        appetizer.printInfo()
    } else {
        dish =  MainDish(ingredients: "Spaghetti, Tomato sauce", name: "Super Spaghetti")
    }
    if let appetizerDish = dish as? AppetizerDish {
        appetizerDish.printInfo()
    } else {
        dish.printInfo()
    }
    
    if dish is MainDish {
        print("main dish")
    }
}
