import Cocoa

// Use index(of:) to determine the position of the element "Dan" in players.
var players = ["Alice", "Bob", "Dan", "Eli", "Frank"]

print(players.firstIndex(of: "Dan") as Any) //coercing type to Optional(2)
print(players.firstIndex(of: "Dan")!) //force unwrapping the optional returned by the firstIndex method

if let firstIndex = players.firstIndex(of: "Dan") {
    print(firstIndex)
} else {
    print("Unable to locate index.")
}

// Write a for-in loop that prints the players' names and scores
let scores = [2,2,8,6,1,2,1]
players = ["Anna", "Brain", "Craig", "Dan", "Donna", "Eli", "Franklin"]
for (index, player) in players.enumerated() {
    print("\(index + 1). \(player)")
}

for (index, player) in players.enumerated() {
    print("\(index + 1). \(player): \(scores[index])")
}

// Write a function that prings a given player's city and state
// A mutable dictionary with String keys and String values
var bob = [
    "name": "Bob",
    "profession": "Card Player",
    "country": "USA",
]

// Adding additional keys and values to the mutable dictionary representing city and state
bob["city"] = "San Diego"
bob["state"] = "CA"

//This function accepts a dictionary of type [String: String], and prints a player's city and state by force unwrapping the dictionary's optionals
func printPlayerCityState(ofPlayer player: [String: String]) {
    print("\(player["name"]!) lives in \(player["city"]!), \(player["state"]!)")
}

//This function accepts a dictionary of type [String: String], and prints a player's city and state using if-let, which is preferable to force unwrapping since force unwrapping can cause run-time errors
func printPlayerCityStateAlt(ofPlayer player: [String: String]) {
    if let city = player["city"], let state = player["state"], let name = player["name"] {
        print("\(name) lives in \(city), \(state)")
    }
}

// Both functions print the same string through string interpolation of the dictionary's elements
printPlayerCityState(ofPlayer: bob)
printPlayerCityStateAlt(ofPlayer: bob)


// Challenges

// Which of the following are valid statements?
 
let array1 = [Int]() // Valid
//let array2 = [] // Invalid: the type cannot be inferred
let array3: [String] = [] // Valid
//: Given:
let array4 = [1, 2, 3]

//: Which of the following five statements are valid
print(array4[0]) // Valid
//print(array4[5]) // Will compile, but will cause an error at runtime: index out of bounds
array4[1...2] // Valid
//array4[0] = 4 // Invalid: a constant array cannot be modified
//array4.append(4) // Invalid: a constant array cannot be modified
//: Given:
var array5 = [1, 2, 3]

//: Which of the five statements are valid?
array5[0] = array5[1]  // Valid
array5[0...1] = [4, 5] // Valid
//array5[0] = "Six" // Invalid: an element of type String cannot be added to an array of type [Int]
//array5 += 6 // Invalid: the += operator requires an array on the right-hand side, not a single element
for item in array5 { print(item) }  // Valid


// Write a function that removes the first occurrence of a given integer from an array of integers.

func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var result = array
    if let firstIndex = result.firstIndex(of: item) {
        result.remove(at: firstIndex)
    }
    return result
}

let this = removingOnce(0, from: [0,1,0,1,0])
print(this)


// Write a function that removes all occurrences of a given integer from an array of integers.

func removing(_ item: Int, from array: [Int]) -> [Int] {
    var result = array
    for number in result {
        if number == item {
            if let firstIndex = result.firstIndex(of: item) {
                result.remove(at: firstIndex)
            }
        }
    }
    return result
}

// Swiftier!

func removingAgain(_ item: Int, from array: [Int]) -> [Int] {
  var newArray: [Int] = []
  for candidateItem in array {
    if candidateItem != item {
      newArray.append(candidateItem)
    }
  }
  return newArray
}

let thisToo = removing(0, from: [0,1,0,1,0,0,0,0])
print(thisToo)

// Write a function that reverses an array without using the reversed() method

func reversed(_ array: [Int]) -> [Int] {
  var newArray: [Int] = []
  for item in array {
    newArray.insert(item, at: 0)
  }
  return newArray
}

//Write a function that returns the middle element of an array. When array size is even, return the first of the two middle elements.

func middle(_ array: [Int]) -> Int? {
    guard !array.isEmpty else {
        return nil
      }
    return array[(array.count-1)/2]
}

// Write a function that calculates the minimum and maximum value in an array of integers. Calculate these values yourself, do not use the methods `min` and `max`.
// Return `nil` if the given array is empty.

func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    guard !numbers.isEmpty else {
        return nil
      }
    let sortedNumbers = numbers.sorted()
    return (min: sortedNumbers.first!, max: sortedNumbers.last!)
}


// Which of the following statements are valid?

//let dict1: [Int, Int] = [:] // Invalid: type should be [Int: Int] not [Int, Int]
//let dict2 = [:] // Invalid: type cannot be inferred
let dict3: [Int: Int] = [:] // Valid
let dict33: [String: Int] = [:] // Valid

//: Given
let dict4 = ["One": 1, "Two": 2, "Three": 3]
//: Which of the following are valid:

//dict4[1] // Invalid: key should be String, not Int
dict4["One"] // Valid
//dict4["Zero"] = 0 // Invalid: dict4 is a constant, cannot assign new values
//dict4[0] = "Zero" // Invalid: key should be a String and value should be an Int - and dict4 is a constant anyway

//: Given
var dict5 = ["NY": "New York", "CA": "California"]

//: Which of the following are valid?
dict5["NY"]  // Valid
dict5["WA"] = "Washington" // Valid
dict5["CA"] = nil // Valid

//  Given a dictionary with 2-letter state codes as keys and the full state name as values, write a function that prints all the states whose name is longer than 8 characters. For example, for this dictionary ["NY": "New York", "CA": "California"] the output would be "California".

func pullNamesOverEight(from states: [String: String]) -> [String: String] {
    var longNames: [String: String] = [:]
    for (abbreviation, name) in states {
        if name.count >= 8 {
            longNames[abbreviation] = name
        }
    }
    return longNames
}

// Actual answer
func printLongStateNames(in dictionary: [String: String]) {
  for (_, value) in dictionary {
    if value.count > 8 {
      print(value)
    }
  }
}

let stateAbbreviationsAndNames = ["NY": "New York", "CA": "California", "ID": "Idaho", "WA": "Washington", "UT": "Utah"]
print(pullNamesOverEight(from: stateAbbreviationsAndNames))


// Write a function that combines two dictionaries into one. If a certain key appears in both dictionaries, ignore the pair from the first dictionary.

func combine(dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var result = dict1
    for (key, value) in dict2 {
        result[key] = value
    }
    return result
}

let states1 = ["NY": "New York", "CA": "California", "ID": "Idaho", "WA": "Washington", "UT": "Utah"]
let states2 = ["NY": "New New York", "HI": "Hawaii"]
print(combine(dict1: states1, with: states2))

/*:
 Declare a function `occurrencesOfCharacters` that calculates which characters occur in a string, as well as how often each of these characters occur.
 Return the result as a dictionary.

 Hint: `String` is a collection of characters that you can iterate over with a for statement.
*/

func occurrencesOfCharacters(in text: String) -> [Character: Int] {
    var charCounts: [Character: Int] = [:]
    for character in text {
        if charCounts[character] == nil {
            charCounts[character] = 1
        }
        else {
            charCounts[character]! += 1
        }
    }
    return charCounts
}

// This is better than force unwrapping
func occurrencesOfCharacters1(in text: String) -> [Character: Int] {
  var occurrences: [Character: Int] = [:]
  for character in text {
    if let count = occurrences[character] {
      occurrences[character] = count + 1
    } else {
      occurrences[character] = 1
    }
  }
  return occurrences
}

// Even BETTER!
func occurrencesOfCharactersBonus(in text: String) -> [Character: Int] {
  var occurrences: [Character: Int] = [:]
  for character in text {
    occurrences[character, default: 0] += 1
  }
  return occurrences
}

print(occurrencesOfCharacters(in: "Dalton Turner"))

// Write a function that returns true if all of the values of a dictionary are unique.  Use a set to test uniqueness.

func isInvertible(_ dictionary: [String: Int]) -> Bool {
  var seenValues: Set<Int> = []
  for value in dictionary.values {
    if seenValues.contains(value) {
      return false  // duplicate value detected
    }
    seenValues.insert(value)
  }
  return true
}

/*:
 ### Challenge 12: Removing keys and setting values to nil
 Given the dictionary:
 */
var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]

nameTitleLookup.updateValue(nil, forKey: "Patrick")
nameTitleLookup["Ray"] = nil
print(nameTitleLookup)
