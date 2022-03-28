import Cocoa

// Mini exercises

struct TV {
    var height: Double
    var width: Double
    
    var diagonal: Int {
        let result = Int((height * height + width * width).squareRoot().rounded())
        return Int(result)
    }
}

var myTV = TV(height: 28.25, width: 44.50)
myTV.diagonal

// --------------------------------------------------------

struct LightBulb {
    static let maxCurrent = 40
    var isOn = false
    var current = 0 {
        willSet {
            if newValue > LightBulb.maxCurrent {
                print("""
                        Current is too high,
                        turning off.
                      """)
                isOn = false
            }
        }
        didSet {
            if current > Self.maxCurrent {
                print("""
                        Current is too high,
                        falling back to previous value.
                      """)
                current = oldValue
            }
        }
    }
}

var light = LightBulb()
light.current = 50
light.current

// Installing a new bulb
var bulb = LightBulb() // Light bulb is off
// Flipping the switch
bulb.isOn = true // Light bulb is ON with 40 amps
// Using the dimmer
bulb.current = 30 // Light bulb is ON with 30 amps
// Using the dimmer to a high value
bulb.current = 50 // Light bulb is OFF
// Flipping the switch
bulb.isOn = true // Light bulb is ON with 30 amps

// --------------------------------------------------------

struct Circle {
    var radius = 0.0
    var circumference: Double {
        .pi * radius * 2
    }
}

// --------------------------------------------------------

// Challenges

/*:
Rewrite the `IceCream` structure:
 1. Use default values and lazy initialization
 2. Use default values for the properties.
 3. Lazily initialize the `ingredients` array.
 */

struct IceCream {
    let name = "Vanilla"
    lazy var ingredients: [String] = {
      ["sugar", "milk", "yolks", "cream", "vanilla"]
    }()
  }

/*:
At the beginning of the chapter, you saw a `Car` structure. Dive into the inner workings of the car and rewrite the `FuelTank` structure with property observer functionality.

  1. Add a `lowFuel` stored property of Boolean type to the structure.
  2. Flip the `lowFuel` Boolean when the `level` drops below 10%.
  3. Ensure that when the tank fills back up, the `lowFuel` warning will turn off.
  4. Set the `level` to a minimum of `0` or a maximum of `1` if it gets set above or below the expected values.
  5. Add a `FuelTank` property to `Car`.
 */

struct FuelTank {
    var lowFuel: Bool = false
    var level: Double {
        didSet {
            if level < 0 {
                level = 0
            }
            if level > 1 {
                level = 1
            }
            lowFuel = level < 0.1
        }
    }
}

struct Car {
    let make: String
    let color: String
    var tank: FuelTank
}
