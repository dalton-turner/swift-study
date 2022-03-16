import UIKit

var greeting = "Hello, playground"

let count = 10
var sum = 0
for i in 1...count {
    sum += i
}
sum

// mini exercises
let range = 1...10
for i in range {
    print("\(i*i)")
}

for i in range {
    print("\(sqrt(Double(i)))")
}

sum = 0
for row in 0..<8 where row % 2 == 1 {
    for column in 0..<8 {
        sum += row * column
    }
}
print("\(sum)")

let myAge = 30

switch myAge {
case 0...2:
  print("Infant")
case 3...12:
  print("Child")
case 13...19:
  print("Teenager")
case 20...39:
  print("Adult")
case 40...60:
  print("Middle aged")
case _ where myAge >= 61:
  print("Elderly")
default:
  print("Invalid age")
}


let person = (name: "Dalton", age: 26)

switch person {
case (let name, 0...2):
  print("\(name) is an Infant")
case (let name, 3...12):
  print("\(name) is a Child")
case (let name, 13...19):
  print("\(name) is a Teenager")
case (let name, 20...39):
  print("\(name) is an Adult")
case (let name, 40...60):
  print("\(name) is Middle aged")
case (let name, 61...):
  print("\(name) is Elderly")
default:
  print("Invalid age")
}

// Challenges

/*:
 In the following for loop:
 ```
 var sum = 0
 for i in 0...5 {
   sum += i
 }
 ```
 What will be the value of `sum`, and how many iterations will happen?
 */

var sums = 0
for i in 0...5 {
  sums += i
}
sums

// sum = 15, 6 iterations (0, 1, 2, 3, 4, 5)

/*:
 In the while loop below:
 ````
 var aLotOfAs = ""
 while aLotOfAs.count < 10 {
   aLotOfAs += "a"
 }
 ````
 How many instances of the character “a” will there be in `aLotOfAs`? Hint: `aLotOfAs.count` will tell you how many characters there are in the string `aLotOfAs`.
 */
// aLotOfAs contains 10 instances of "a"

/*:
 Consider the following switch statement:
 
 ```
 switch coordinates {
 case let (x, y, z) where x == y && y == z:
   print("x = y = z")
 case (_, _, 0):
   print("On the x/y plane")
 case (_, 0, _):
   print("On the x/z plane")
 case (0, _, _):
   print("On the y/z plane")
 default:
   print("Nothing special")
 }
 ```
 What will this code print when coordinates is each of the following?
 ```
 let coordinates = (1, 5, 0)
 let coordinates = (2, 2, 2)
 let coordinates = (3, 0, 1)
 let coordinates = (3, 2, 5)
 let coordinates = (0, 2, 4)
 ```
 */

//let coordinates = (1, 5, 0)
// "On the x/y plane"
//let coordinates = (2, 2, 2)
// "x = y = z"
//let coordinates = (3, 0, 1)
// "On the x/z plane"
//let coordinates = (3, 2, 5)
// "Nothing special"
//let coordinates = (0, 2, 4)
// "On the y/z plane"


// A closed range can never be empty. Why?
// Ranges must always be increasing.  With a closed range the second number is always included in the range.

// Print a countdown from 10 to 0.  (Note: do not use the `reversed()` method, which will be introduced later.)

for i in 0...10 {
    print("\(10-i)")
}

// Print 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0.  (Note: do not use the `stride(from:to:by:)` function, which will be introduced later.)
for i in 0...10 {
    print("\(Double(i)/10)")
}
