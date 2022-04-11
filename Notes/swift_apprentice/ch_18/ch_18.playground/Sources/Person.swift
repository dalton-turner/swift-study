import Foundation

public struct Person {
    public private(set) var firstName: String
    public private(set) var lastName: String

    public init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    public var fullName: String {
      "\(firstName) \(lastName)"
    }
}

open class ClassyPerson {
    public private(set) var firstName: String
    public private(set) var lastName: String

    public init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    open var fullName: String {
      "\(firstName) \(lastName)"
    }
}


