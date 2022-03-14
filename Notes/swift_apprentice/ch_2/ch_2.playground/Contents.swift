import UIKit

var greeting = "Hello, playground"

// Inspect with option + click on the constant names
let age1 = 42
let age2 = 21

// The type of avg1 here is Int, but should be Double since the Int type loses precision after division
let avg1 = (age1 + age2) / 2

let avg2 = Double((age1 + age2) / 2)


// Declaring strings in Swift

let stringDog = "Dog" // with type inference
let stringDogs: String = "Dog"

// Concatenation

var message = "Hi my name is "
let name = "Dalton"
message += name

let exclamationMark: Character = "!"
message += String(exclamationMark) // convert the character to a string prior to concatenation

// Interpolation

message = "Hello my name is \(name)"

let oneThird = 1.0 / 3.0
let oneThirdLongString = "One third is \(oneThird) as a decimal."


// Multi-line Strings

let bigString = """
BIG
OLD
STRING
"""

// Mini-exercises

let firstName = "Dalton"
let lastName = "Turner"

var fullName = firstName + " " + lastName

var message2 = "Hello my name is \(fullName)"

// Tuples Mini-exercises

var newTuple = (month: 1, day: 1, year: 2022, averageTemperature: 50.0)
let (_, today, _, todaysAverageTemperature) = newTuple
newTuple.averageTemperature = 21.2

typealias Coordinates = (Int, Int)
let xy: Coordinates = (2,4)

// Challenges

//  Create a constant called `coordinates` and assign a tuple containing two and three to it.

let coordinates = (2,3)

// Create a constant called `namedCoordinate` with a `row` and `column` component of 2 and 3.

let namedCoordinate = (row: 2, column: 3)

//  Which of the following are valid statements?

//let character: Character = "Dog" //invalid
//let character: Character = "🐶" //invalid
//let string: String = "Dog" // valid
//let string: String = "🐶" //invalid

//Is this valid code? -- yes!
let tuple = (day: 15, month: 8, year: 2015)
let day = tuple.day // if Day were capitalized it would not be

//What is wrong with the following code?
// Name is a constant, and you cannot update a constant's data
//let name = "Matt"
//name += " Galloway"

//What is the type of the constant called `value`?
let tupleTuple = (100, 1.5, 10)
let value = tupleTuple.1

// value's type is double

//What is the value of the constant called `month`?
let typleTuple1 = (day: 15, month: 8, year: 2015)
let month = typleTuple1.month

// month's value is 8 of type int

// What is the value of the constant named summary?

let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"
// 10 multiplied by 5 equals 50

// What is the sum of a and b, minus c?
let a = 4
let b: Int32 = 100
let c: UInt8 = 12

let answer = a + Int(b) - Int(c)

//what is the numeric difference between Double.pi and Float.pi?

let difference = Double.pi - Double(Float.pi)

