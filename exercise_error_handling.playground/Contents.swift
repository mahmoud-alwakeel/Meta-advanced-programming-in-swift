enum CalculatorError : Error{
    case divisionByZero
}

class Calculator {
    func divide(num1: Double, num2: Double) throws -> Double{
        if num2 == 0 {
                throw CalculatorError.divisionByZero
        } else {
            return num1/num2
        }
    }
}

let calculator = Calculator()

 do {
     let successfulResult = try calculator.divide(num1: 10.0, num2: 5.0)
     print("result: \(successfulResult)")
     let invalidResult = try calculator.divide(num1: 10.0, num2: 0)
 } catch CalculatorError.divisionByZero{
     print("Division by zero detected and not allowed.")
 }
