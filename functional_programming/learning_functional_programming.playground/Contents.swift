let originalPrices = [2, 5, 12, 6, 8]

func conertPrices(origPrices: [Int], conversionClosure: (_ prices: Int) -> Int) -> [Int] {
    // array of integers that will hold the final result
    var convertedResult = [Int]()
    for x in origPrices {
        let convertedPrice = conversionClosure(x)
        convertedResult.append(convertedPrice)
    }
    return convertedResult
}

conertPrices(origPrices: originalPrices, conversionClosure:({ $0 * 2}))
