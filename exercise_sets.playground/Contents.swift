var reservationsOverPhone : Set<String> = ["000-345-3440", "000-345-3441"]
var reservationsInPerson : Set<String> = ["000-345-3442", "000-345-3443"]
var reservationsOverInternet : Set<String> = ["000-345-3444", "000-345-3445"]


var inPersonAndOverPhone = reservationsOverPhone.union(reservationsInPerson)
print(inPersonAndOverPhone)

var allPhoneNumbers = inPersonAndOverPhone.union(reservationsOverInternet)
print(allPhoneNumbers)


var confirmationCodes : Set<String> = ["LL3450","LL3451"]
print("\(allPhoneNumbers.count) \(confirmationCodes.count)")

confirmationCodes.insert("LL3452")
confirmationCodes.insert("LL3453")
confirmationCodes.insert("LL3454")
confirmationCodes.insert("LL3455")
print(confirmationCodes)
print("\(allPhoneNumbers.count) \(confirmationCodes.count)")


allPhoneNumbers.remove("000-345-3445")
confirmationCodes.remove("LL3455")
print(allPhoneNumbers)
print(confirmationCodes)
print("\(allPhoneNumbers.count) \(confirmationCodes.count)")


