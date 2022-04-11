import Cocoa
import XCTest

class SavingsAccount: BasicAccount {
    var interestRate: Double
    
    @available(*, deprecated, message: "Use init(interestRate:pin: instead")
    init(interestRate: Double) {
        self.interestRate = interestRate
    }
    
    @available(*, deprecated, message: "Use processInterest(interestRate:pin: instead")
    func processInterest(pin: Int) {
        let interest = balance * interestRate
        deposit(amount: interest)
    }
}


let dalton = Person(firstName: "Dalton", lastName: "Turner")
dalton.fullName


class Doctor: ClassyPerson {
    override var fullName: String {
        "Dr. \(super.fullName)"
    }
}

let drDalton = Doctor(firstName: "Dalton", lastName: "Turner")
drDalton.fullName

class BankingTests: XCTestCase {
    var checkingAccount: CheckingAccount!
    
    override func setUp() {
        super.setUp()
        checkingAccount = CheckingAccount()
    }
    
    override func tearDown() {
        checkingAccount.withdraw(amount: checkingAccount.balance)
        super.tearDown()
    }
    
    func testNewAccountBalanceZero(){
        let checkingAccount = CheckingAccount()
        XCTAssertEqual(checkingAccount.balance, 0)
    }
}

BankingTests.defaultTestSuite.run()


// ----------------------------------

//: Challenge 1
class Logger {
  
  // A private initializer is required to restrict instantiation so only the class itself can create objects.
  private init() {}
  
  // The single, shared instance.
  static let sharedInstance = Logger()
  
  func log(_ text: String) {
    print(text)
  }
}

Logger.sharedInstance.log("Hello, Swift!")
