protocol GoodChef {
    func cookGoodFood()
}

protocol GreatChef {
    func cookGreatFood()
}

protocol ExcellentChef {
    func cookExcellentFood()
}

protocol BlackBeltChef: GoodChef, GreatChef, ExcellentChef {
    func cookBlackBeltFood()
}

class Person: BlackBeltChef {
    func cookGoodFood() {
    }
    func cookGreatFood() {
        }
    func cookExcellentFood() {
    }
    func cookBlackBeltFood() {
        }
}

//extension Person: ExcellentChef {
//    func cookExcellentFood() {
//    }
//}
