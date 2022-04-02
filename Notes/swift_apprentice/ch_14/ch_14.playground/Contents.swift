import Cocoa


/*:
 Create three simple classes called `A`, `B`, and `C` where `C` inherits from `B` and `B` inherits from `A`. In each class initializer, call `print("I'm <X>!")` both before and after `super.init()`. Create an instance of `C` called `c`.  What order do you see each `print()` called in?
 
 Implement `deinit` for each class. Place your `c` inside of a `do { }` scope which will cause the reference count to go to zero when it exits the scope. What order are the classes deinitialized in?
*/

class A {
    init () {
        print("I'm A")
    }
    deinit {
      print("Destroy A")
    }
}

class B: A {
    override init() {
        print("I'm B!(1)")
        super.init()
        print("I'm B!(2)")
    }
    deinit {
      print("Destroy B")
    }
}

class C: B {
    override init() {
        print("I'm C!(1)")
        super.init()
        print("I'm C!(2)")
    }
    deinit {
      print("Destroy C")
    }
}

do { let _ = C() }


// Cast the instance of type `C` to an instance of type `A`. Which casting operation do you use and why?

let c = C()
let _ = c as A

// You use as because c is a class C, which is a subclass of class A

/*:
Create a subclass of `StudentAthlete` called `StudentBaseballPlayer` and include properties for `position`, `number`, and `battingAverage`.  What are the benefits and drawbacks of subclassing `StudentAthlete` in this scenario?
 */

class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

struct Grade {
    let letter: String
    let points: Double
}

class Student: Person {
    var grades: [Grade] = []
}

class StudentAthlete: Student {
  var sports: [String] = []
}

class StudentBaseballPlayer: StudentAthlete {
    var position: String
    var number: Int
    var battingAverage: Double
    
    init(firstName: String, lastName: String, position: String, number: Int, battingAverage: Double) {
        self.position = position
        self.number = number
        self.battingAverage = battingAverage
        super.init(firstName: firstName, lastName: lastName)
    }
}

/*
 Benefits of subclassing StudentBaseballPlayer from StudentAthlete include inheriting from all of the classes up the inheritance heirarchy, including StudentAthlete, Student, and Person.
 
 Also get the type relationship with superclasses. StudentBaseballPlayer _is_ a Student. Polymorphism!
 
 Drawbacks include convoluted initialization and implementing such a deep class heirarchy means creating similar classes for alternate sports which may not apply in all situations.
 */
