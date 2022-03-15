import UIKit

var greeting = "Hello, playground"

// mini-exercises

let myAge = 26
let isTeenager = 13 <= myAge && myAge <= 19

let theirAge = 30
let bothTeenagers = 13 <= myAge && myAge <= 19 && 13 <= theirAge && theirAge <= 19

let reader = "Dalton"
let author = "Matt"
let aurhorIsReader = reader == author

let readerBeforeAuthor = reader <= author

// mini-exercises

let myAge1 = 26
if 13 <= myAge && myAge <= 19 {
    print("Is a Teenager")
} else {
    print("Is not a Teenager")
}

let answer = 13 <= myAge && myAge <= 19 ? "Teenager" : "Not Teenager"
print(answer)

// mini-exercises

var counter = 0
while counter < 10 {
    print("Counter is \(counter)")
    counter += 1
}

var counter1 = 0
var roll = 0

repeat {
    roll = Int.random(in:0...5)
    counter1 += 1
    print("After \(counter1) rolls, roll is \(roll)")
} while roll != 0

// Challenges

/*
What’s wrong with the following code?

```
let firstName = "Matt"

if firstName == "Matt" {
  let lastName = "Galloway"
} else if firstName == "Ray" {
  let lastName = "Wenderlich"
}
let fullName = firstName + " " + lastName
```
*/

// lastName is out of scope because it is defined within the if statements

let answer1 = true && true
// True
let answer2 = false || false
// False
let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
// True
let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)
// True

/*:
 Imagine you're playing a game of snakes & ladders that goes from position 1 to position 20. On it, there are ladders at position 3 and 7 which take you to 15 and 12 respectively. Then there are snakes at positions 11 and 17 which take you to 2 and 9 respectively.
 Create a constant called `currentPosition` which you can set to whatever position between 1 and 20 which you like. Then create a constant called `diceRoll` which you can set to whatever roll of the dice you want. Finally, calculate the final position taking into account the ladders and snakes, calling it `nextPosition`.
 */

let currentPosition = 6
let diceRoll = 1
var nextPosition = currentPosition + diceRoll

if nextPosition == 3 {
     nextPosition = 15
}
else if nextPosition == 7 {
    nextPosition = 12
}
else if nextPosition == 11 {
    nextPosition = 2
}
else if nextPosition == 17 {
    nextPosition = 9
}
else {
    nextPosition
}

print("Board position after \(currentPosition) is \(nextPosition)")


/*:
 Given a year reprsented by an `Int` and a month represented by a `String` in all lowercase and using the first three letters, calculate the number of days in the month. You need to account for leap years remembering that February ("feb") has 29 days in a leap year and 28 otherwise. A leap year occurs every 4 years, unless the year is divisible by 100, but then if it's divisible by 400 then it is actually a leap year.
 */
let month = "feb"
let year = 2021

var days = 0
if month == "jan" || month == "mar" || month == "may" || month == "jul" || month == "aug" || month == "oct" || month == "dec" {
  days = 31
} else if month == "apr" || month == "jun" || month == "sep" || month == "nov" {
  days = 30
} else if month == "feb" {
  if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
    days = 29
  } else {
    days = 28
  }
}

if days > 0 {
  print("\(month) has \(days) days")
} else {
  print("Invalid month!")
}

// Given a number, determine the next power of 2 above or equal to that number.
let testNum = 512.0
var testCase = 0.0

while pow(2.0,testCase) < testNum {
    testCase += 1
}

print("2 to the power of \(Int(testCase)) (\(Int(pow(2.0,testCase)))) is the next power above or equal to \(Int(testNum))")

//  Given a number, print the triangular number of that depth. You can get a refresher of triangular numbers here: https://en.wikipedia.org/wiki/Triangular_number

let toTriangle = 4
var triangleNumber = (toTriangle * (toTriangle + 1)) / 2

// Fibonacci

let n = 10
var current = 1
var previous = 1
var done = 2
while done < n {
  let next = current + previous
  previous = current
  current = next
  done += 1
}
print("Fibonacci number \(n) is \(current)")

// Use a loop to print out the times table up to 12 of a given factor
let factor = 8

var count = 0
var accumulator = 0
while count <= 12 {
  print("\(factor) x \(count) = \(accumulator)")
  accumulator += factor
  count += 1
}

/*:
 Print a table showing the number of combinations to create each number from 2 to 12 given 2 six-sided dice rolls. You should not use a formula but rather compute the number of combinations exhaustively by considering each possible dice roll.
 */

var target = 2

while target <= 12 {
  var combinationsFound = 0
  var valueOnFirstDice = 1
  while valueOnFirstDice <= 6 {
    var valueOnSecondDice = 1
    while valueOnSecondDice <= 6 {
      if valueOnFirstDice + valueOnSecondDice == target {
        combinationsFound += 1
      }
      valueOnSecondDice += 1
    }
    valueOnFirstDice += 1
  }

  print("\(target):\t\(combinationsFound)")

  target += 1
}
