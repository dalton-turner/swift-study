import Cocoa

// Mini-exercises

var myFavoriteSong: String? = "The Song Remains the Same"

let parsedInt = Int("10")
// returns an optional because the string may not be an integer, in which case the result will be nil
let anotherParsedInt = Int("dog")

var result: Int? = 30
print(result as Any)

if let myFavoriteSong = myFavoriteSong {
    print("\(myFavoriteSong)")
} else {
    print("I don't have a favorite song.")
}

myFavoriteSong = nil

if let myFavoriteSong = myFavoriteSong {
    print("\(myFavoriteSong)")
} else {
    print("I don't have a favorite song.")
}

// Practicing with guard and optional unwrapping

func calculateNumberOfSides(of shape: String) -> Int? {
    switch shape {
    case "Triangle":
        return 3
    default:
        return nil
    }
}

func printSideCountIfKnown(of shape: String) {
    guard let sides = calculateNumberOfSides(of: shape) else {
        print("idk")
        return
    }
    
    print("A \(shape) has \(sides) sides.")
}

printSideCountIfKnown(of: "Triangle")

// Challenges

/*:
 Which of the following are valid statements?
 
 ```swift
 var name: String? = "Ray"
 var age: Int = nil
 let distance: Float = 26.7
 var middleName: String? = nil
 ```
*/

var name: String? = "Ray" // valid
// var age: Int = nil // invalid
let distance: Float = 26.7 // valid
var middleName: String? = nil // valid


/*:
First, create a function that returns the number of times an integer can be divided by another integer without a remainder. The function should return `nil` if the division doesn’t produce a whole number. Name the function `divideIfWhole`.
 
 Then, write code that tries to unwrap the optional result of the function. There should be two cases: upon success, print `"Yep, it divides \(answer) times"`, and upon failure, print `"Not divisible :["`.
 
 Finally, test your function:
 
 1. Divide 10 by 2. This should print `"Yep, it divides 5 times."`
 2. Divide 10 by 3. This should print `"Not divisible :[."`
 
 **Hint 1**: Use the following as the start of the function signature:
 
 ```swift
 func divideIfWhole(_ value: Int, by divisor: Int)
 ```
 
 You’ll need to add the return type, which will be an optional!
 
 **Hint 2**: You can use the modulo operator (`%`) to determine if a value is divisible by another; recall that this operation returns the remainder from the division of two numbers. For example, `10 % 2 = 0` means that 10 is divisible by 2 with no remainder, whereas `10 % 3 = 1` means that 10 is divisible by 3 with a remainder of 1.
*/

func divideIfWhole(_ value: Int, by divisor: Int) -> Int? {
    return value % divisor == 0 ? value / divisor : nil
}

let testResult = divideIfWhole(10,by: 2) ?? 0
testResult != 0 ? print("Yep, it divides \(testResult) times.") : print("Not divisible :[")

// Did challenge 3 as a part of challenge 2 here.


/*:
Consider the following nested optional. It corresponds to a number inside a box inside a box inside a box.
 
 ```swift
 let number: Int??? = 10
 ```
 
 If you print number you get the following:
 
 ```swift
 print(number)
 // Optional(Optional(Optional(10)))
 
 print(number!)
 // Optional(Optional(10))
 ```
 
 1. Fully force unwrap and print `number`.
 2. Optionally bind and print `number` with if let.
 3. Write a function `printNumber(_ number: Int???)` that uses `guard` to print the number only if it is bound.
 */

let number: Int??? = 10
print(number!!!)

//-----------------------------

if let numberCheck = number!! {
    print("\(numberCheck)")
}

if let number = number {
  if let number = number {
    if let number = number {
      print(number)
    }
  }
}

// Better way of optionally binding without all the {}
if let n1 = number,
   let n2 = n1,
   let n3 = n2 {
  print(n3)
}

//-----------------------------

func printNumber(_ number: Int???) {
    guard let numberCheckAgain = number!! else {
        return
    }
    
    print(numberCheckAgain)
}
