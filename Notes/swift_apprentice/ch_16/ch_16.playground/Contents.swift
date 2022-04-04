import Cocoa
import Foundation

protocol Area {
    var area: Double { get }
}

struct Square: Area {
    let side: Double
    var area: Double {
        side * side
    }
}

struct Circle: Area {
    let radius: Double
    var area: Double {
        .pi * radius * radius
    }
}

struct Triangle: Area {
    let base: Double
    let height: Double
    var area: Double {
        0.5 * base * height
    }
}


let square = Square(side: 1.0)
let circle = Circle(radius: 1.0)
let triangle = Triangle(base: 1.0, height: 1.0)
var shapes: [Area] = [square, circle, triangle]

print(shapes.map { $0.area })

// ------------------------------------------------------------

//: Pet shop tasks
//:
//: Create a collection of protocols for tasks that need doing at a pet shop. The pet shop has dogs, cats, fish and birds.
//: The pet shop duties include these tasks:
//:
//: * All pets need to be fed.
//:
//: * Pets that can fly need to be caged.
//:
//: * Pets that can swim need a tank.
//:
//: * Pets that walk need exercise.
//:
//: * Tanks, cages, and litter boxes need to be cleanded occasionally.
//:
//: 1. Create classes or structs for each animal and adopt the appropriate protocols. Feel free to simply use a print() statement for the method implementations.

//: 2. Create homogenous arrays for animals that need to be fed, caged, cleaned, walked, and tanked. Add the appropriate animals to these arrays. The arrays should be declared using the protocol as the element type, for example `var caged: [Cageable]`.

//: 3. Write a loop that will perform the proper tasks (such as feed, cage, walk) on each element of each array.

protocol Fed {
    func fed()
}

protocol Caged {
    func caged()
}

protocol Tanked {
    func tanked()
}

protocol Walked {
    func walked()
}

protocol Cleaned {
    func cleaned()
}

struct Cat: Fed, Walked, Cleaned {
    func fed() {
        print("Fed!")
    }
    func walked() {
        print("Walked!")
    }
    func cleaned() {
        print("Cleaned!")
    }
}

struct Bird: Fed, Caged, Cleaned {
    func fed() {
        print("Fed!")
    }
    func caged() {
        print("Caged!")
    }
    func cleaned() {
        print("Cleaned!")
    }
}

struct Fish: Fed, Tanked, Cleaned {
    func fed() {
        print("Fed!")
    }
    func tanked() {
        print("Tanked!")
    }
    func cleaned() {
        print("Cleaned!")
    }
}

let cat = Cat()
let fish = Fish()
let bird = Bird()


let feedingDuties: [Fed] = [cat, fish, bird]
let cleaningDuties: [Cleaned] = [cat, fish, bird]
let tankingDuties: [Tanked] = [fish]
let cagingDuties: [Caged] = [bird]
let walkingDuties: [Walked] = [cat]

feedingDuties.map { $0.fed() }
cleaningDuties.map { $0.cleaned() }
tankingDuties.map { $0.tanked() }
cagingDuties.map { $0.caged() }
walkingDuties.map { $0.walked() }

for feed in feedingDuties {
    feed.fed()
}
