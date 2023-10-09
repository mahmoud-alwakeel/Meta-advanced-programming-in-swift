enum Ingrediant: String {
    case chicken = "egyptian chicken"
    case meat = "mexican meat"
    case rice = "syrian rice"
    case lettuce = "Romaine Lettuce"
}

let ingredient = Ingrediant.lettuce

switch ingredient {
case .chicken:
    print("We use \(ingredient.rawValue) that has the richest flavor from all the chicken.")
case .meat:
    print("We use \(ingredient.rawValue) that has the richest flavor from all the meat.")
case.rice:
    print("We use \(ingredient.rawValue) that has the richest flavor from all the rice.")
case.lettuce:
    print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces.")
}


enum RecipeInformation {
    case allergens(information: String)
}
 
let recipeInformation = RecipeInformation.allergens(information: "peanuts milk and gluten")


switch recipeInformation {
case .allergens(let information):
    print("The meal includes the following allergens: \(information)")
}

