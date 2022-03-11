# Your First iOS & SwiftUI App: An App from Scratch
---
Dalton Turner

## Getting Started with SwiftUI
In 'Your First iOS & SwiftUI App: An App from Scratch' you learn how to create an MVP for a simple iPhone app. This course will discuss the implementation of the "must haves" for the app's MVP. Subsequent courses will focus on the "nice-to-haves" and fundamentals of Swift programming.
  

## SwiftUI vs. UIKit 
Apple introduced SwiftUI in 2019, and it is now the preferred method to create user interfaces in iOS. SwiftUI makes it easier to port your apps to other platforms than UIKit. 

UIKit was developed prior to SwiftUI, and is still widely utilized for user interfaces. Some companies need to support older versions of iOS, and therefore UIKit. Companies are waiting for SwiftUI to mature as there are still some missing features and rough edges. Refactoring UIKit code into SwiftUI would be a large undertaking for most companies right now. 

Learning both SwiftUI and UIKit is currently the best way to approach iOS development. One should understand how to write code in both to be an effective iOS developer. 


## Challenge: Make a Programming To-Do List
This section reinforces the fundamental programming idea that one should figure out what they want to build prior to figuring out how it is they plan to do it.

### The Challenge: A To-Do list

#### Must Haves
- App Icon
- Basic framework for the app
- A randomized target number between 1 and 100 
- A target on a slider with associated position values for the target
- A 'Hit Me' Button that initiates comparison of the slider's value and the random number
- A screen or pop up showing a message comparing the values and congratulating the user if they are the same

#### Nice To Haves
- A leaderboard displaying the user's name (three digits), score, and number of rounds to achieve the score
- Score across rounds
- Round counter
- Drop shadows and improved app background
- Light Mode or Dark Mode
- Allow for Horizontal or vertical game play


## SwiftUI Views
In SwiftUI, a View is just about anything that gets drawn on the screen (text items, buttons, containers for other views, etc.) The different ways views look and what they do are key differentiators.

For the rest of this section, we completed the "Must Haves" portion of our to-do list and create an MVP for the Bullseye app. 


## SwiftUI View Modifiers
Built in view modifiers allow developers to alter the layout and formatting of their views. A key point to note is that the ordering of view mofifiers matters because each time a modifier is added, SwiftUI recreates the view. Sometimes, the return value of a view modifier can be different than the original view type. Therefore, the modifier order matters for more than one reason:

    1. Recreation of views
    2. Return values varying across modifier types


## Objects, Data & Methods
In this episode we review instances, data, and methods. In SwiftUI the differences between classes and structs are much more subtle than in other programming languages since structs are relatively robust. 

In programming, classes and structs (or instances of classes and structs) are ways to create reusable components that have both data and functionality. Functionality is created by a method or function. A method is a function that belongs to an instance. Calling a methods in SwiftUI requires the usage of dot notation on an instance of a class/struct. Methods can have optional parameters that change their behavior. 

Data is the information an instance needs to do it's job. In Swift, the way you store data on an instance is through a property. Stored and computed properties are the main types of properties in Swift. Stored properties store information, while computed properties run some code you wrote such that the data is calculated by the code. 


## Solve Problems
Typos, case sensitivity and missing parentheses/curly braces are common error messages. These errors are fatal, while warnings allow you to move forward. Try and resolve all warnings as if they were errors. 
