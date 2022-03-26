import Cocoa

// Mini-exercises

struct Pizza {
    let size: Int
    let toppings: [String]
    let style: String
    let cookTime: Int
}

let pizza = Pizza(size: 14, toppings: ["Pepperoni", "Mushrooms", "Anchovies"], style: "Thin", cookTime: 15)

// -----------------------------------

// Just the location
struct Location {
    let x: Int
    let y: Int
}

// Potential delivery radius around center
struct DeliveryArea {
    let center: Location
    var radius: Double
}

// Calculate the distance between the source and target locations
func distance(from source: Location, to target: Location) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}

// Returns true if the distance between the restaurant location and the delivery location is within the delivery radius, false otherwise
func isInDeliveryRange(from restaurantLocation: DeliveryArea, to deliveryLocation: Location) -> Bool {
    distance(from: restaurantLocation.center, to: deliveryLocation) <= restaurantLocation.radius
}

// structs are a data type, so their data is copied over when instantiated
let restaurant1 = DeliveryArea(center: Location(x: 3, y: 2), radius: 1)
let deliveryRequest = Location(x: 1, y: 1)
let deliveryRequest2 = Location(x: 3, y: 2)

// call the isInDeliveryRange function with test restaurant and delivery locations
let response1 = isInDeliveryRange(from: restaurant1, to: deliveryRequest)
let response2 = isInDeliveryRange(from: restaurant1, to: deliveryRequest2)


// -----------------------------------


// Challenges

/*:
 Imagine you're at a fruit tree farm and you grow different kinds of fruits: pears, apples, and oranges. After the fruits are picked, a truck brings them in to be processed at the central facility. Since the fruits are all mixed together on the truck, the workers in the central facility have to sort them into the correct inventory container one-by-one.
 Implement an algorithm that receives a truck full of different kinds of fruits and places each fruit into the correct inventory container.
 
 Keep track of the total weight of fruit processed by the facility and print out how many of each fruit are in the inventory.
 */

struct Fruit {
  let kind: String // e.g. Apple, Pear, Orange
  let weight: Int // measured in grams
}

// Load up the truck full of fruits with random weights
let truck: [Fruit] = [
  Fruit(kind: "Apple", weight: Int.random(in: 70...100)),
  Fruit(kind: "Pear", weight: Int.random(in: 70...100)),
  Fruit(kind: "Apple", weight: Int.random(in: 70...100)),
  Fruit(kind: "Orange", weight: Int.random(in: 70...100)),
  Fruit(kind: "Pear", weight: Int.random(in: 70...100)),
  Fruit(kind: "Apple", weight: Int.random(in: 70...100))
]

// Allocate the inventory containers
var pears = [Fruit]()
var apples = [Fruit]()
var oranges = [Fruit]()

var totalProcessedWeight = 0

// The sorting algorithm accepts a truck full of fruits.
// It processes each fruit independently to
// check what kind of fruit it is and
// place each one into the correct inventory container
func receive(_ truck: [Fruit]) {
  for fruit in truck {
    switch fruit.kind {
    case "Pear":
      pears.append(fruit)
    case "Apple":
      apples.append(fruit)
    case "Orange":
      oranges.append(fruit)
    default:
      fatalError("Fruit type not supported")
    }
    
    totalProcessedWeight += fruit.weight
  }
}

receive(truck)

print("Total weight:", totalProcessedWeight, "grams", "\n---")
print("Quantity of pears:\t\t", pears.count)
print("Quantity of apples:\t\t", apples.count)
print("Quantity of oranges:\t", oranges.count, "\n")


/*
 Create a T-shirt structure that has size, color and material options. Provide a method to calculate the cost of a shirt based on its attributes.
 */

typealias Size = String
let small: Size = "Small"
let medium: Size = "Medium"
let large: Size = "Large"
let xLarge: Size = "XLarge"

typealias Material = String
let cotton: Material = "Cotton"
let polyester: Material = "Polyester"
let wool: Material = "Wool"

typealias Color = String

struct TShirt {
  let size: Size
  let color: Color
  let material: Material

  func cost() -> Double {

    let basePrice = 10.0

    let sizeMultiplier: Double
    switch size {
    case small, medium:
      sizeMultiplier = 1.0
    case large, xLarge:
      sizeMultiplier = 1.1
    default:
      // Special order!
      sizeMultiplier = 1.2
    }

    let materialMultipler: Double
    switch material {
    case cotton:
      materialMultipler = 1.0
    case polyester:
      materialMultipler = 1.1
    case wool:
      materialMultipler = 1.5
    default:
      // Special order!
      materialMultipler = 2.0
    }

    return basePrice * sizeMultiplier * materialMultipler
  }
}

TShirt(size: medium, color: "Green", material: cotton).cost() // $10.00
TShirt(size: xLarge, color: "Gray", material: wool).cost() // $16.50

/*:
 Write the engine for a Battleship-like game.
 * Use an (x, y) coordinate system for your locations modeled using a structure.
 * Ships should also be modeled with structures. Record an origin, direction and length.
 * Each ship should be able to report if a “shot” has resulted in a “hit”.
*/

struct Coordinate {
  let x: Int
  let y: Int
}

struct Ship {
  let origin: Coordinate
  let direction: String
  let length: Int

  func isHit(coordinate: Coordinate) -> Bool {
    if direction == "Right" {
      return origin.y == coordinate.y &&
             coordinate.x >= origin.x &&
             coordinate.x - origin.x < length
    } else {
      return origin.x == coordinate.x &&
             coordinate.y >= origin.y &&
             coordinate.y - origin.y < length
    }
  }
}

struct Board {

  var ships: [Ship] = []

  func fire(location: Coordinate) -> Bool {
    for ship in ships {
      if ship.isHit(coordinate: location) {
        print("Hit!")
        return true
      }
    }

    return false
  }
}

let patrolBoat = Ship(origin: Coordinate(x: 2, y: 2), direction: "Right", length: 2)
let battleship = Ship(origin: Coordinate(x: 5, y: 3), direction: "Down", length: 4)
let submarine = Ship(origin: Coordinate(x: 0, y: 0), direction: "Down", length: 3)

/*:
  Set up the board.
  */

var board = Board()
board.ships.append(contentsOf: [patrolBoat, battleship, submarine])
