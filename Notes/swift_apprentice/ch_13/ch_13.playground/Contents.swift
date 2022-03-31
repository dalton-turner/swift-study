import Cocoa


// Mini exercises

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let john = Person(firstName: "Johnny", lastName: "Appleseed")
john.firstName
john.lastName
john.fullName

var homeOwner = john
john.firstName
john.lastName
homeOwner.firstName

homeOwner.lastName = "Seed"
john.fullName
homeOwner.fullName

//  Updating last name associated with homeOwner changed last name across all instances of the Person object.

func memberOf(person: Person, group: [Person]) -> Bool {
    group.contains { $0 === person }
}

let johnny = Person(firstName: "Johnny", lastName: "Appleseed")
let jane = Person(firstName: "Jane", lastName: "Appleseed")
let anonymous1 = Person(firstName: "Bob", lastName: "Anonymous")
let anonymous2 = Person(firstName: "Bill", lastName: "Anonymous")
let anonymous3 = Person(firstName: "Biff", lastName: "Anonymous")

let group1 = [johnny, jane, anonymous1, anonymous2, anonymous3]
let group2 = [johnny, john, anonymous1, anonymous2, anonymous3]

memberOf(person: john, group: group1)
memberOf(person: john, group: group2)



struct Grade {
    let letter: String
    let points: Double
    let credits: Double
}

class Student {
    var firstName: String
    var lastName: String
    var grades: [Grade] = []
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
    
    var gpa: Double {
        var totalCredits = 0.0
        var totalPoints = 0.0
        for grade in grades {
            totalCredits += grade.credits
            totalPoints += grade.points
        }
        return (totalPoints / totalCredits)
    }
}

let student = Student(firstName: "Jane", lastName: "Appleseed")
student.recordGrade(Grade(letter: "B", points: 9.0, credits: 3.0))
student.recordGrade(Grade(letter: "A", points: 16.0, credits: 4.0))
student.recordGrade(Grade(letter: "A", points: 16.0, credits: 5.0))

student.gpa


// --------------------------------------------------------------------------------

/*:
 Imagine you're writing a movie-viewing application in Swift. Users can create lists of movies and share those lists with other users.
 
 Create a `User` and a `List` class that uses reference semantics to help maintain lists between users.
 
 - `User` - Has a method `addList(_:)` which adds the given list to a dictionary of `List` objects (using the `name` as a key), and `list(forName:) -> List?` which will return the `List` for the provided name.
 - `List` - Contains a name and an array of movie titles. A `print` method will print all the movies in the list.
 - Create `jane` and `john` users and have them create and share lists. Have both `jane` and `john` modify the same list and call `print` from both users. Are all the changes reflected?
*/

class User {
    var userLists: [String: List] = [:]
    
    func addList(_ list: List) {
        userLists[list.name] = list
    }
    
    func list(forName name: String) -> List? {
        userLists[name]
    }
}

class List {
    var name: String
    var titles: [String] = []
    
    init(name: String) {
        self.name = name
    }
    
    func printTitles() {
        for title in titles {
            print(title)
        }
    }
}

// Give Joe and janie an "Action" list
let janie = User()
let joe = User()
var actionList = List(name: "Action")

janie.addList(actionList)
joe.addList(actionList)

// Add Jane's favorites
janie.userLists["Action"]?.titles.append("Rambo")
janie.userLists["Action"]?.titles.append("Terminator")

// Add John's favorites
joe.userLists["Action"]?.titles.append("Die Hard")

// See John's list:
joe.userLists["Action"]?.printTitles()

// See Jane's list:
janie.userLists["Action"]?.printTitles()

// Structs don't allow you to share a list!


/*:
 
 Your challenge here is to build a set of objects to support a t-shirt store. Decide if each object should be a class or a struct, and why.
 
 - `TShirt` - Represents a shirt style you can buy. Each `TShirt` has a size, color, price, and an optional image on the front.
 - `User` - A registered user of the t-shirt store app. A user has a name, email, and a `ShoppingCart` (below).
 - `Address` - Represents a shipping address, containing the name, street, city, and zip code.
 - `ShoppingCart` - Holds a current order, which is composed of an array of `TShirt` that the `User` wants to buy, as well as a method to calculate the total cost. Additionally, there is an `Address` that represents where the order will be shipped.
*/
/*
 - TShirt: struct because you'd like to be able to reproduce, and the data doesn't change frequently
 - User: class because every user is unique and you'd like a single source of truth for a user's information
 - Address: struct because the data is relatively static
 - ShoppingCart: Class because more complex actions are taken that rely on users, shirts, and
*/
