import Cocoa

class Dog {
    var name: String
    
    init(name: String){
        self.name = name
    }
}

class Cat {
    var name: String
    
    init(name: String){
        self.name = name
    }
}

//class Keeper<Animal> {
//    var name: String
//    var morningCare: Animal
//    var afternoonCare: Animal
//
//    init(name: String, morningCare: Animal, afternoonCare: Animal) {
//        self.name = name
//        self.morningCare = morningCare
//        self.afternoonCare = afternoonCare
//    }
//}
//
//let dalton = Keeper(name: "Dalton", morningCare: Dog(name: "Beans"), afternoonCare: Dog(name: "Mako"))
//let stringKeeper = Keeper(name: "StringKeeper", morningCare: "", afternoonCare: "")


// --------------------------------------------------------------------


/*:
 ## Generics Challenge
 
 Consider the pet and keeper example from earlier in the chapter.
 
 Imagine that instead of looking after only two animals, every keeper looks after a changing number of animals throughout the day. It could be one, two, ten animals per keeper instead of just morning and afternoon ones.
 
 You’d have to do things like the following:
 
 ```swift
 let christine = Keeper<Cat>(name: "Christine")
 
 christine.lookAfter(someCat)
 christine.lookAfter(anotherCat)
 ```
 
 You’d want to be able to access the count of all of animals for a keeper like `christine.countAnimals` and to access the 51st animal via a zero-based index like `christine.animalAtIndex(50)`.
  
 Of course, you’re describing your old friend the array type, `Array<Element>`!
 
 Your challenge is to update the `Keeper` type to have this kind of interface. You’ll probably want to include a private array inside `Keeper` and then provide methods and properties on `Keeper` to allow outside access to the array.
 
 */

class Keeper<Animal> {
    var name: String
    private var keepersAnimals: [Animal] = []
    
    var countAnimals: Int {
        keepersAnimals.count
    }
    
    init(name: String) {
        self.name = name
    }
    
    func lookAfter(_ someAnimal: Animal) {
        keepersAnimals.append(someAnimal)
    }
    
    func animalAtIndex(at index: Int) -> Animal {
        keepersAnimals[index]
    }
}

let mako = Cat(name: "Mako")
let darcy = Cat(name: "Mr. Darcy")
let nini = Cat(name: "Moos")

let christine = Keeper<Cat>(name: "Christine")
christine.lookAfter(mako)
christine.lookAfter(darcy)
christine.lookAfter(nini)

christine.countAnimals
christine.animalAtIndex(at: 0).name
christine.animalAtIndex(at: 1).name
christine.animalAtIndex(at: 2).name
