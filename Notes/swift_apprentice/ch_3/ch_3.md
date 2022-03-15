# Swift Apprentice - Chapter 3: Basic Control Flow

## Boolean Operators

Allow for comparison of values and true/false scenarios. Can be strung together with And/Or operators. Parentheses disambiguate the expression. 

## Toggling a Bool

.toggle() allows you to flip a bool from true to false and back. 

## If Statement

If statement relies on a conditional. Can be paired with an else statement to take an action when initial condition ends up being false. else if statements can be nested to handle more complex logic. 

## Short Circuting

If the fist condition of a multi-condition if statement is always true or always false, Swift will not check the remaining conditions and ignore the if statement. This is called short circuting. 

## Encapsulation

Variables defined inside of an if statement's logic are only usable within the if statement's scope. The if statement can inherit from it's parent scope, but not the other way around. 

## Ternary conditional operator

if statements can become verbose. The ternary operator takes a condition and returns one of two values, depending on whether the condition was true or false. 

## Loops

While loops execute the comparison condition first, while repeat while loops execute the comparison condition at the end of the loop. 

Breaking out of a loop can sometimes be necessary. Including a break within an if condition within the loop is one way to escape the loop. 

## Challenges

Solutions [here](https://github.com/raywenderlich/sa-materials/blob/editions/7.0/03-basic-control-flow/projects/challenge/03-basic-control-flow-challenges.playground/Contents.swift).