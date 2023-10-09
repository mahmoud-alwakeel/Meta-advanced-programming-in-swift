import UIKit

enum Dessert {
    case tirmaisu
    case afogato
    case cannoli(chefName: String?)
}
var favMeal = Dessert.cannoli(chefName: "wakeel")

switch favMeal {
case .afogato:
    print("fav meal this week is afogato")
case .cannoli(let chefName):
    let prefix: String
    if let chefName = chefName {
        prefix = "\(chefName)'s"
    } else {
        prefix = ""
    }
    print("\(prefix) cannoli meal is this week's fav meal ")
case .tirmaisu:
    print("fav meal this week is tirmaisu")
}

// enums with raw values
enum PastaTypes: Int, CaseIterable {
  case spaghetti = 8
  case penne = 10
  case ravioli = 11
  case rigatoni = 12
}

func cookingPerfectPasta(pasta: PastaTypes) {
  let cookingTime = pasta.rawValue
  print("\(pasta) will be perfectly cooked in \(cookingTime) minutes.")
}
cookingPerfectPasta(pasta: .rigatoni)

let totalCaseCount = PastaTypes.allCases.count
print(totalCaseCount)



// enum with associated values
enum PastaTypesA {
  case spaghetti(cookingTime: Int)
  case penne(cookingTime: Int)
  case ravioli(cookingTime: Int)
  case rigatoni(cookingTime: Int)
}

var checkIfCooked = PastaTypesA.spaghetti(cookingTime: 8)

//if cookingTime < 8 {
//  print("Spaghetti is still not fully cooked...")
//} else {
//  print("Spaghetti is cooked, take it out of the water!")
//}

// Using enum inside a function
func checkIfCooked(for pasta: PastaTypesA) {
    switch pasta {
    case .spaghetti(let cookingTime):
        if cookingTime < 8 {
            print("Spaghetti is still not fully cooked...")
        } else {
            print("Spaghetti is cooked, take it out of the water!")
        }

    default: return
    }
}

checkIfCooked(for: .spaghetti(cookingTime: 9))

// using where for better readability
func checkIfCooked2(for pasta: PastaTypesA) {
  switch pasta {
  case .spaghetti(let cookingTime) where cookingTime >= 8:
    print("Spaghetti is cooked, take it out of the water!")
  default: print("Pasta is not cooked.")
  }
}
checkIfCooked2(for: .spaghetti(cookingTime: 7))
