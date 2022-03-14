# Swift Apprentice - Chapter 2: Types & Operations

## Type Conversion 

Swift requires explicit type conversion. This helps to prevent bugs and reduce the frequency of performance issues. 

## Operators with mixed types

In Swift, you cannot apply operators to mixed types. By being explicit about what you mean when you utilize operators with mixed types, you can be sure of the type of the result the operation returns. 

## Type inference 

The Swift compiler can infer type of the constant/variable assignment you're performing. By holding down the Option key and clicking on a constant/variable declaration's name, you can inspect it's type. 

There are several ways you can declare a variable's type. Double(3), Double = 3, 3 as Double, or simply 3.0 (since doubles with decimal points can only be doubles and not Ints). Literal values like 3 don't have a type, and it's only when using them in an expression or assigning them to a constant or variable that Swift infers a type for them. 

Mini-exercises! See Playground code.

## Strings

Computers store text in a data type called a string. Character sets are a two-way mapping of numbers to letters, which the CPU can then interpret. Unicode is the primary character set mapping most computers use today. 

## Concatenation, Interpolation, and Multi-line strings

Strings can be combined with the addition operator/the increment operator. Characters can also be added to strings if they are converted prior to performing an operator. 

Interpolation is a special Swift string syntax that allows for simple combination and declaration. It is simple and easy to read, but offers no ability to customize output. 

Three double-quotes signify a multiline string. This allows for flexibility in adding long strings to your code. 

## Tuples

Tuples allow for type inference and component naming within the tuple's declaration.

## Type aliases

Creating your own type which is an alias of another type can be very useful in Swift. A coordinates example is shown which creates a typle containing two ints and uses it for value assignment. 

## Protocols

Type commonality is formalized in Swift using what is known as a protocol. By learning the protocol you understand the whole type's family. 

## Challenges

See playground code. Solutions [here](https://github.com/raywenderlich/sa-materials/blob/editions/7.0/02-types-and-operations/projects/challenge/02-types-and-operations-challenges.playground/Contents.swift). 



