import Foundation


@objc protocol ReservationDtataSource {
    @objc optional func reserve(tables: Int) -> Int
    @objc optional var maxReservableTables: Int { get }
}

class ReservationWebsite: ReservationDtataSource {
    func reserve(tables: Int) -> Int {
        if tables < 1 {
            return 0
        }
        return tables
    }
}

class ReservationAgent: ReservationDtataSource {
    let maxReservableTables: Int = 2
}
