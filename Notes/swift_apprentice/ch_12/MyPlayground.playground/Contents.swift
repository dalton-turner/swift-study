import Cocoa

//let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
//
//struct SimpleDate {
//    var month: String
//
//    var monthsUntilWinterBreak: Int {
//        get {
//            let result = months.firstIndex(of: "December")! - months.firstIndex(of: self.month)!
//            return result
//        }
//    }
//}

// ------------------------------------

struct Math {
  static func factorial(of number: Int) -> Int {
    (1...number).reduce(1, *)
  }
  static func triangleNumber(n: Int) -> Int {
    (1...n).reduce(0, +)
  }
}

Math.factorial(of: 5) // 120
Math.triangleNumber(n: 6) // 21

// ------------------------------------

// Challenges


/*:
 Write a method that can change an instance's area by a growth factor. For example if you call `circle.grow(byFactor: 3)`, the area of the instance will triple.
 
 Hint: Add a setter to `area`.
*/



struct Circle {
    var radius = 0.0
    var area: Double {
        get {
            .pi * radius * radius
        }
        set {
            radius = (newValue / .pi).squareRoot()
        }
    }
    mutating func grow(byFactor amount: Double) {
        area *= amount
    }
}

var circle = Circle(radius: 5)
circle.area // 78.54
circle.grow(byFactor: 3)
circle.area // 235.62


// Rewrite `advance()` to account for advancing from December 31st to January 1st.


let months = ["January", "February", "March",
              "April", "May", "June",
              "July", "August", "September",
              "October", "November", "December"]

struct SimpleDate {
    var month: String
    var day: Int
    let longMonths = ["January", "March", "May", "July", "August", "October", "December"]
    let shortMonths = ["April", "June", "September", "November"]
    mutating func advance() {
        if longMonths.contains(month) && day == 31 {
            day = 1
            if month == "December" {
                month = "January"
            } else {
                month = months[months.firstIndex(of: month)!.advanced(by: 1)]
            }
        } else if shortMonths.contains(month) && day == 30 {
            day = 1
            month = months[months.firstIndex(of: month)!.advanced(by: 1)]
        } else if month == "February" && day == 28 {
            day = 1
            month = months[months.firstIndex(of: month)!.advanced(by: 1)]
        } else {
            day += 1
        }
    }
}


var date = SimpleDate(month: "December", day: 31)
var date2 = SimpleDate(month: "February", day: 28)
date.advance()
date.month
date.day
date2.advance()
date2.month
date2.day


/*:
 Add type methods named `isEven` and `isOdd` to your `Math` namespace that return `true` if a number is even or odd respectively.
 */

extension Math {
    static func isEven(_ num: Int) -> Bool {
        num % 2 == 0
    }
    static func isOdd(_ num: Int) -> Bool {
        num % 2 != 0
    }
}

let result = Math.isEven(2)
let result2 = Math.isEven(3)


/*:
It turns out that `Int` is simply a struct.  Add the computed properties `isEven` and `isOdd` to `Int` using an extension.

> Generally, you want to be careful about what functionality you add to standard library types as it can cause confusion for readers.
*/

extension Int {
    var isEven: Bool {
        self % 2 == 0
    }
    var isOdd: Bool  {
        self % 2 != 0
    }
}

/*:
Add the method `primeFactors()` to `Int`. Since this is an expensive operation, this is best left as an actual method.
*/

extension Int {
  func primeFactors() -> [Int] {
    var remainingValue = self
    var testFactor = 2
    var primes: [Int] = []
    while testFactor * testFactor <= remainingValue {
      if remainingValue % testFactor == 0 {
        primes.append(testFactor)
        remainingValue /= testFactor
      }
      else {
        testFactor += 1
      }
    }
    if remainingValue > 1 {
      primes.append(remainingValue)
    }
    return primes
  }
}
