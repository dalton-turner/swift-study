# SwiftUI Data

## Buttons and Actions
The print function is like a method that is not attached to an instance. You can use it without having to name an instance first. Functions don't belong to an instance.

print is an excellent debugging tool. It's purpose is to help you figure out what is going on in your app. It has no effect if your app is shipped to the app store. 

## SwiftUI State
The state of your application and your user interface are forced to be in sync when using SwiftUI. The state of your application is similar to a car dashboard -- it displays your data and metrics and should be an accurate representation of what is taking place within the app. 

State variables are always initialized with a starting value. When something changes within the app, the value can be updated. When the state variables are updated, it is your job to take this into consideration and make sure the user interface communicates that to the user. 

## Challenge: SwiftUI State
Practice SwiftUI based on the challenge ask. 

## SwiftUI Bindings
Bindings are a way to ensure that the user interface view will always be tied to a particular state value.

Converting a state variable to a binding requires a $ to be prepended to the variable name. 

## Strings
Strings are a series of characters. The string data type allows for interpolation, with dynamic content injected at runtime. 

## Variables
A variable allows your app to remember things. It allows you to store data. A variable is a container, and it's type determines what kinds of data it will accept. 

If a variable is a property on a SwiftUI view, you add the @State keyword. SwiftUI will automatically recompute the body of the app so it stays up-to-date with the state if the variable changes.

The optional private keyword makes a variable only accessible by its given class or struct.  

var is the first required keyword, which allows the variable's data to be updated. let indicates a constant, which cannot be changed. 

It is best practice to provide specific names in camel case for variables. 

Type is added during declaration if you want to be explicit. Casting type is converting variables to new types. 

How long will variables store contents? Depends on where it is declared. 

## App Architecture

Avoid spaghetti code. Try and implement the single responsibility principle in your code. 

## Create a Model
Follow along in the course videos to create view and model folders to organize the project's files. Create a new game model to track score, rounds, target values, and create a function to return the points.