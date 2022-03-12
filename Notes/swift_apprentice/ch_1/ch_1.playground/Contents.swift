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

