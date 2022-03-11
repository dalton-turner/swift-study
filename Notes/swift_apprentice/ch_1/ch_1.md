# Swift Apprentice - Chapter 1

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
