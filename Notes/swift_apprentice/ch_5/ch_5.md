# Swift Apprentice - Chapter 5: Functions

Functions are a core part of any programming language. A function lets you define a block of code that performs a task. 

## Function basics

You define a function using the func keyword, followed by the function name, parentheses for parameters, and curly braces for the block of code the function should execute. 

## Function parameters

Parameterizing your functions allows them to perform differently depending on the data passed in. 

Your function declares it's parameters in its parameter list. When you call a function, you provide values as arguments for the function's parameters. 

In Swift, you should try to make your function calls read like a sentence. 

You can assign different external names by typing them in front of a parameter's internal name. These external names can be ignored using an underscore. You can also add a default value when a parameter value isn't provided at the time the function is called. 

## Return Values

To declare a function that returns a value, you add a -> followed by the type of the return value after the set of parentheses and before the opening brace. Inside the function you use a return statement to return the value. 

You can return multiple values by using tuples.

You can remove the return statement if the function is a single statement. 

## Advanced parameter handling

Function parameters are constants, meaning they cannot be modified unless you do want to explicitly let the function change a parameter directly. This behavior is known as copy-in copy-out or call by value result. To take advantage of this behavior, add an ampersand before the argument, which makes it clear that you are using copy-in copy-out. 

## Overloading

Overloading lets you define similar functions using a single names. Usually, you need to be clear which function you're calling. This is achieved by the functions having either:

- A different number of parameters
- Different parameter types
- Different external parameter names

## Functions as variables

Functions in Swift are simply another data type. You can assign them to variables and constants just as you can any other type of value, such as an Int or a String. 

Being able to assign functions to variables means that functions can be passed into other functions, which is a very powerful tool. 

## Writing good functions

Make functions that do one thing, are easy to use, and easy to understand. This will simplify testing functions in isolation. 

Document your funcitons! 

## Challenges

Solutions are [here](https://github.com/raywenderlich/sa-materials/blob/editions/7.0/05-functions/projects/challenge/05-functions-challenges.playground/Contents.swift). 