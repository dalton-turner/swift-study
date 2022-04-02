import Cocoa

//enum Month: Int {
//    case january = 1
//    case february
//    case march
//    case april
//    case may
//    case june
//    case july
//    case august
//    case september
//    case october
//    case november
//    case december
//
//    var semester: String {
//        switch self {
//        case .august, .september, .october, .november, .december:
//            return "Autumn"
//        case .january, .february, .march, .april, .may:
//            return "Spring"
//        case .june, .july:
//            return "Summer"
//        }
//    }
//
//    var monthsUntilWinterBreak: Int {
//        Month.december.rawValue - rawValue
//    }x
//}
//
//var month = Month.september
//let semester = month.semester


// ---------------------------------------------------------------------------

enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}

let coin = Coin.quarter
coin.rawValue

let coinPurse = [Coin.quarter, Coin.dime, Coin.nickel, Coin.penny]
let coinPurse1: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]

// ---------------------------------------------------------------------------

enum LightSwitch {
    case on, off
}

var livingRoomLight = LightSwitch.off
livingRoomLight = .on

// ---------------------------------------------------------------------------

import Foundation

enum Math {
  static let e = 2.7183
}

let nestEgg = 25000 * pow(Math.e, 0.07 * 20) // $101,380.95


// ---------------------------------------------------------------------------

// Challenges

/*:
 ## Enumerations Challenge Set 1
 
 Taking the coin example from earlier in the chapter, begin with an array of coins.
 
 ```swift
 /// enum Coin: Int {
 ///   case penny = 1
 ///   case nickel = 5
 ///   case dime = 10
 ///   case quarter = 25
 /// }
 ///
 /// let coinPurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]
 ```
 
 Write a function where you can pass in the `coinPurse`, add up the value and return the number of cents.
 */

func purseValue(of coinPurse: [Coin]) -> Int {
    var result = 0
    for coin in coinPurse {
       result += coin.rawValue
    }
    return result
}

purseValue(of: coinPurse1)

// ---------------------------------------------------------------------------

/*:
 ## Enumerations Challenge Set 2
 
 Taking the example from earlier in the chapter, begin with the `Month` enumeration:
 
 ```swift
 /// enum Month: Int {
 ///   case january = 1, february, march, april, may, june, july, august, september, october, november, december
 /// }
 ```
 
 Write a computed property to calculate the number of months until summer.
 
 **Hint:** You’ll need to account for a negative value if summer has already passed in the current year. To do that, imagine looping back around for the next full year.
 */



enum Month: Int {
    case january = 1
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
    
    var semester: String {
        switch self {
        case .august, .september, .october, .november, .december:
            return "Autumn"
        case .january, .february, .march, .april, .may:
            return "Spring"
        case .june, .july:
            return "Summer"
        }
    }
    
    var monthsUntilWinterBreak: Int {
        Month.december.rawValue - rawValue
    }
    
    var monthsUntilSummer: Int {
        var monthsLeft = Month.june.rawValue - rawValue
        if monthsLeft < 0 {
            monthsLeft += 12
        }
        return monthsLeft
    }
}

// ---------------------------------------------------------------------------

/*:
 ## Enumerations Challenge Set 3
 
 Taking the map example from earlier in the chapter, begin with the `Direction` enumeration:
 
 ```swift
 /// enum Direction {
 ///   case north
 ///   case south
 ///    case east
 ///    case west
 /// }
 ```
 
 Imagine starting a new level in a video game. The character makes a series of movements in the game. Calculate the position of the character on a top-down level map after a set of movements:
 
 ```swift
 /// let movements: [Direction] = [.north, .north, .west, .south, .west, .south, .south, .east, .east, .south, .east]
 ```
 
 **Hint:** Use a tuple for the location:
 
 ```swift
 /// var location = (x: 0, y: 0)
 ```
 */

enum Direction {
    case north
    case south
    case east
    case west
}

func location(ofPlayer movements: [Direction]) -> (x: Int, y: Int) {
    var location = (x: 0, y: 0)
    for i in movements {
        switch i {
        case .north:
            location.y += 1
        case .south:
            location.y -= 1
        case .east:
            location.x += 1
        case .west:
            location.x -= 1
        }
    }
    return location
}

let movements: [Direction] = [.north, .north, .west, .south, .west, .south, .south, .east, .east, .south, .east]

let levelLocation = location(ofPlayer: movements)
