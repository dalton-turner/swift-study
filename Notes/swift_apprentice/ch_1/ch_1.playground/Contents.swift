import UIKit
import CoreGraphics

var greeting = "Hello, playground"

// Comments
// This is a single-line comment

// This is a multi-line
// comment

/* This is a comment
 over
 several
 lines
 !
 */

// The Print Command
print("Hello, Swift Apprentice reader!")

// Arithmetic Operators
2 + 6
10 - 2
2 * 4
24 / 3
22 / 7 // This results in 3 because only integers are used
22.0 / 7.0 // This results in the expected decimal value

// The Remainder Operation
28 % 10 // This results in a remainder of 8

// This is the same idea, but with decimals:
(28.0).truncatingRemainder(dividingBy: 10.0)

// The Shift Operators
1 << 3
32 >> 2

// Order of operations
350 / 5 + 2

350 / (5 + 2)

// Other math functions
sin(45 * Double.pi / 180)
(1 / (2.0).squareRoot()) == (sin(45 * Double.pi / 180))

// Constats
// This declares a constant called number, whidh is of type Int and sets the value of the constant to the number 10
let number: Int = 10
let other_number: Decimal = 10.0

// Variables
var variableNumber: Int = 42

// Increment and Decrement
var counter: Int = 0

counter += 1
counter -= 1

// Mini Exercises
// Declare a constant of type Int called myAge and set it to your age:
let myAge: Int = 26

// Declare a variable of type Double called averageAge. Initially, set it to your own age. Then, set it to the average of your age and the age 30

var averageAge: Double = 26.0
averageAge = (averageAge + 30) / 2

 // Create a constant testNumber and initialize. Create another called evenOdd and set it equal to testNumber modulo 2. Now change testNumber to other numbers. What do you notice about evenOdd?

let testNumber: Int = 14
let evenOdd = testNumber % 2
// evenOdd is 0 when even and 1 when odd

// Create a variable called answer and initialize with value 0. Increment by 1. Add 10 to it. Multiply by 10. Shift right by 3. What is the answer?

var answer: Int = 0
answer += 1
answer += 10
answer *= 10
answer >>= 3


// Challenges

/*
Declare a constant `Int` called `myAge` and set it equal to your age. Also declare an `Int` variable called `dogs` and set it equal to the number of dogs you own. Then imagine you bought a new puppy and increment the `dogs` variable by one.
*/

let myAgeNow: Int = 26
var dogs: Int = 1
dogs += 1

/*:
 Given the following code:
 ```swift
 age = 16
 print(age)
 age = 30
 print(age)
 ```
  Declare `age` so that it compiles.  Did you use `var` or `let`?
*/

var age: Int = 16
print(age)
age = 30
print(age)

/*:
 Consider the following code:

let x: Int = 46
let y: Int = 10
 
Work out what `answer` equals when you add the following lines of code:
// 1
let answer1: Int = (x * 100) + y
// 2
let answer2: Int = (x * 100) + (y * 100)
// 3
let answer3: Int = (x * 100) + (y / 10)
*/

// 4610
// 5600
// 4601

let x: Int = 46
let y: Int = 10
// 1
let answer1: Int = (x * 100) + y
// 2
let answer2: Int = (x * 100) + (y * 100)
// 3
let answer3: Int = (x * 100) + (y / 10)


// Add as many parentheses to the following calculation, ensuring that it doesn't change the result of the calculation: 8 - 4 * 2 + 6 / 3 * 4
8 - (4 * 2) + ((6 / 3) * 4)

// Declare three constants called `rating1`, `rating2` and `rating3` of type `Double` and assign each a value. Calculate the average of the three and store the result in a constant named `averageRating`.

let rating1: Double = 1.0
let rating2: Double = 1.0
let rating3: Double = 1.0

let averageRating: Double = (rating1 + rating2 + rating3) / 3

// Bonus: why is it important that the ratings are of type `Double`?
// The average may be rounded incorrrectly if the ratings were defined as int's

/*:
 The power of an electrical appliance can be calculated by multiplying the voltage by the current.
 Declare a constant named `voltage` of type `Double` and assign it a value. Then declare a constant called `current` of type `Double` and assign it a value. Finally calculate the power of the electrical appliance you've just created storing it in a constant called `power` of type `Double`.
 */

let voltage: Double = 1.0
let current: Double = 1.0
let power: Double = voltage * current

/*:
 The resistance of such an appliance can then be calculated (in a long-winded way) as the power divided by the current squared.
 Calculate the resistance and store it in a constant called `resistance` of type `Double`.
 */

let resistance: Double = voltage / current

/*:
 You can create a random integer number by using the function `arc4random()`. This picks a number anywhere between 0 and 4294967295. You can use the modulo operator to truncate this random number to whatever range you want.
 Declare a constant `randomNumber` and assign it a random number generated with `arc4random()`. Then calculate a constant called `diceRoll` and use the random number you just found to create a random number between 1 and 6.
 */

import Foundation
let randomNumber = arc4random()
let diceRoll = 1 + randomNumber % 6

/*:
 A quadratic equation is something of the form:
   `a⋅x² + b⋅x + c = 0`
 The values of `x` which satisfy this can be solved by using the equation:
   `x = (-b ± sqrt(b² - 4⋅a⋅c)) / (2⋅a)`
 Declare three constants named `a`, `b` and `c` of type `Double`.  Then calculate the two values for `x` using the equation above (noting that the ± means plus or minus — so one value of `x` for each). Store the results in constants called `root1` and `root2` of type `Double`.
 */
let a: Double = 2.0
let b: Double = 2.0
let c: Double = 2.0

let root1: Double = (-b + (b*b - 4*a*c).squareRoot()) / (2*a)
let root2: Double = (-b - (b*b - 4*a*c).squareRoot()) / (2*a)

