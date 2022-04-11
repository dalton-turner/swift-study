import Foundation

// The CheckingAccount class inherits from the BasicAccount class, so all methods and stored properties are available to the CheckingAccount class.
public class CheckingAccount: BasicAccount {
    //Creating a private stored property for the accountNumber with UUID, which is a universally unique value
    private let accountNumber = UUID().uuidString
    private var issuedChecks: [Int] = []
    private var currentCheck = 1
    
    public override init() { }
    
    //Nested Check class allows access to superclass
    class Check {
        let account: String
        var amount: Dollars
        private(set) var cashed = false
        
        func cash() {
            cashed = true
        }
        
        fileprivate init(from account: CheckingAccount, amount: Dollars){
            self.account = account.accountNumber
            self.amount = amount
        }
    }
    
    //Write check function reduces balance if amount is less than balance
    func writeCheck(amount: Dollars) -> Check? {
        guard balance > amount else {
            return nil
        }
        
        let check = Check(from: self, amount: amount)
        withdraw(amount: check.amount)
        return check
    }
    
    //Deposit adds chedk amount to balance if not cashed. It utilizes the original deposit function from BasicAccount to increment the balance
    func deposit(_ check: Check) {
        guard check.cashed == true else {
            return
        }
        
        deposit(amount: check.amount)
        check.cash()
    }
}

private extension CheckingAccount {
    func inspectForFraud(with checkNumber: Int) -> Bool {
        issuedChecks.contains(checkNumber)
    }
    
    func nextNumber() -> Int {
        let next = currentCheck
        currentCheck += 1
        return next
    }
}

extension CheckingAccount: CustomStringConvertible {
    public var description: String {
        "Checking Balance: $\(balance)"
    }
}

