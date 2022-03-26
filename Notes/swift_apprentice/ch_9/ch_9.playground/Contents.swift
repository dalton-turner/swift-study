import Cocoa

// Challenges

/*:
 ### Challenge 1: Character count
 Write a function that takes a string and prints out the count of each character in the string.
 
 For bonus points, print them ordered by the count of each character.
 
 For bonus-bonus points, print it as a nice histogram.
 
 Hint: You could use # characters to draw the bars.
 */

func characterCounts(for string: String) {
    guard string.count > 0 else {return}
    
    var counts: [Character: Int] = [:]
    
    for i in string {
        counts[i, default: 0] += 1
    }
    
    /*
    This explicitly calls sorted on the counts' keys (parentheses used to call function). This is a method of a sequence. counts.keys is an array (conforms to sequence protocol), so it can utilize this instance method.  */
    let keysSortedByAlphabeticalOrder = counts.keys.sorted()
    
    // Using trailing closure syntax we can directly alter the method's behavior with a closure that accepts and returns the types required by the method.
    let keysSortedByCount = counts.keys.sorted { a,b in
        if let first = counts[a], let second = counts[b] {
            return first > second
        }
        return true
    }
    
    // Alternative, simpler solution. If the first element is greater than the second, return true. This is the same way to reverse a dict of strings.
    
    let keysSortedByCountAgain = counts.keys.sorted { counts[$0]! > counts[$1]!}
    
    // Force unwrap this optional, can do this because a guard was used and you know the function could not have progressed with an empty string
    print(counts["H"]!)
    print(keysSortedByAlphabeticalOrder)
    print(keysSortedByCount)
    print(keysSortedByCountAgain)
}

characterCounts(for: "Hi, my name is Flume")


/*:
 Write a function that tells you how many words there are in a string. Do it without splitting the string.

 Hint: try iterating through the string yourself.
 */

func numberOfWords(in sentence: String) -> Int {
  var count = 0
  var inWord = false

  for character in sentence {
    if character == " " {
      if inWord {
        count += 1
      }
      inWord = false
    } else {
      inWord = true
    }
  }

  // We need to add 1 to count the final word if there was at least 1 character
  if inWord {
    count += 1
  }

  return count
}

let wordCount = numberOfWords(in: "The quick brown fox jumps over the lazy dog")
print(wordCount)


//Write a function that takes a string which looks like "Galloway, Matt" and returns one which looks like "Matt Galloway", i.e., the string goes from `"<LAST_NAME>, <FIRST_NAME>"` to `"<FIRST_NAME> <LAST_NAME>"`.

func standardize(this name: String) -> String? {
    guard let commaIndex = name.firstIndex(of: ",") else {return nil}
    
    let lastName = String(name[..<commaIndex])
    let firstName = String(name[name.index(after: name.index(commaIndex, offsetBy: 1))...])
    return firstName + " " + lastName
}

if let standardizedName = standardize(this: "Turner, Dalton") {
  print(standardizedName)
}

/*:
 A method exists on a string named `components(separatedBy:)` that will split the string into chunks, which are delimited by the given string, and return an array containing the results.
 
 Your challenge is to implement this yourself.
 
 Hint: There exists a view on `String` named `indices` that lets you iterate through all the indices (of type `String.Index`) in the string. You will need to use this.
 */

func splitting(_ string: String, delimiter: Character) -> [String] {
    var components: [String] = []
    var lastWordIndex = string.startIndex
    
    for i in string.indices {
        if string[i] == delimiter {
            let chunk = string[lastWordIndex..<i]
            components.append(String(chunk))
            lastWordIndex = string.index(after: i)
        }
    }
    
    // Add the final word
    let substring = string[lastWordIndex..<string.endIndex]
    components.append(String(substring))
    
    return components
}

// Skipping challenge 5
