import Foundation

// Define a protocol that all accounts should conform to. Balance has a getter, and account can withdraw + deposit.
protocol Account {
    associatedtype Currency
    
    var balance: Currency { get }
    func deposit(amount: Currency)
    func withdraw(amount: Currency)
}

// Assign a typealias to the word Dollar as Double
public typealias Dollars = Double

// Define BasicAccount class that conforms to the the Account protocol
open class BasicAccount: Account {
    //Balance is defined as a variable because we should be able to set it, but it is kept private so it is kept accessible only to the defining type -- BasicAccount. It is initialized with 0.0 and is therefore not required in an init
    public private(set) var balance: Dollars = 0.0
    
    public init() { }
    
    //Deposit function allows you to add to the account's balance.
    public func deposit(amount: Dollars) {
        balance += amount
    }
    
    //Withdraw function allows you to withdraw from the account's balance as long as the amount is less than the balance.
    public func withdraw(amount: Dollars) {
        if amount > balance {
            return
        } else {
            balance -= amount
        }
    }
}
