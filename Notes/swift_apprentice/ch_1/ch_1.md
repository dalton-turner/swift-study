# Swift Apprentice - Chapter 1: Expressions, Variables & Constants

## How a computer works

A computer's CPU stores numbers in memory units called registers. The CPU can read these numbers into registers by accessing the computer's RAM, but can also write numbers back to RAM from registers. 

Each action of reading or writing from RAM is a single instruction. Instead of writing individual instructions, writing source code which is interpreted by a compiler, allows you to create CPU readable instructions more easily. 

## Representing numbers

Whatever information is sent to the compiler will eventually be converted into a number (strings, Image pixels, etc.). People are generally used to using base 10, but computers use base 2 or binary. 

The computer term given to each digit of a binary number is a bit. Eight bits make up a byte. Each register in a CPU is usually 32 or 64 bits in length.

Hexidecimal is base 16. This is similar to base 10, with the addition of digits through 15 represented by letters (a = 10, b = 11, etc.). Hexidecimal is useful because each digit can represent four binary digits. Concatenating binary digits that represent each hexidecimal digit allows for much shorter representations of numbers than their binary or decimal equivalents. 

## How code works

Coding is like writing a recipe. These recipies, or pseudo-code, can represent an algorithm you are looking to use. Swift code is a step-by-step list of instructions for the compiler to follow. Swift is a modern programming language that a compiler understands how to convert into CPU-readable instructions. 

## Playgrounds

A toolchain is a set of tools used to write software. An IDE is used to write code. Xcode is the most popular IDE for Swift. 

Xcode uses a concept called a playground which allows you to write and test code without building a complete app.

Follow steps to create a new playground for Chapter 1.

## Playgrounds Overview

Source editor: Where you write your code
Results sidebar: Shows the results of your code
Resource tree: List of resources contained in the playground. Additional sources and resources allow you to build more complex playgrounds. 
Execution control: Lets you run the entire playground file or clear state so it can be run again
Activity viewer: Shows the status of the playground 
Left panel control: Toggles the left panel where the resources tree is
Right panel control: Toggles the right panel (usually closed)
Bottom panel control: Toggles the bottom panel. Find output from runninng playground 

## Getting started with Swift

Code comments are the best way to explain why pieces of code exist. Comments are ignored by the compiler. 

The print command will output whatever you want to the debug area (console).

When you take one or more pieces of data and turn them into another piece of data, this is known as an operation. Simple arithmetic operators are useful in representing this concept. Whitespace around an operator is all or nothing -- you cannot mix styles. 

The remainder operation, also called teh modulo operation is a slightly more complex operator which returns the remainder of the division of two numbers (integers, or decimals). Decimal modulo operators require a special truncating remainder method. 

The shift operations take the binary form of a decimal nuumber and shift the digits left or right. Thenthey return the decimal form of the resulting binary number. Compilers are fast enough these days to handle multiplication and divison so shift operators are relatively rare.

Order of operations follows what you learned in school (pemdas). Use parentheses to disambiguate what you mean. 

Swift has a wide variety of built in math functions such as pi, sin, cos, squareRoot, etc. 

## Naming Data

In Swift code you can give each piece of data a name you can refer to later. The name carries with it a type annotation that denotes what sort of data the name refers to (date, number, text, etc.). Once you've declared a constant, you cannot change it's data. Constants are useful for values that aren't going to change. 

When you want to change the data behind a name, you can use a variable to represent data instead of a constant. You declare constants using let, whereas you declare variables using var. Once you've declared a variable, you're free to change it to whatever you wish. Simply assign a new value. 

Always try to choose meaningful names for variables and constants. Good names can act as documentation. In Swift, it is common to camel case variable and constant names. 

A common operation that you will need is to be able to increment or decrement a variable. 


