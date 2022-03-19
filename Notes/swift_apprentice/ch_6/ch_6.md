# Swift Apprentice - Chapter 6: Optionals

## Introducing nil

Nil represents the absence of value. 

## Sentinel values

A value representing a special condition such as the absence of a value is known as a sentinel value (e.g. an empty string). Optionals handle the possibility a value could be nil. 

## Introducing optionals

Optionals are Swift's solutino to the problem of representing both a value and the absence of a value. 

## Unwrapping optionals

You must unwrap the value from its optional to utilize it. 

## Force unwrapping

Force unwrapping should be used sparingly. It causes runtime errors rather than cocmpile-time errors, which means you'd only notice the error if you happened to execute this code with some invalid input. 

## Optional binding

Optional binding lets you safely access the value inside the optional. Because naming is difficult, it's common practice to give the unwrapped constant the same name as the optinoal (shadowing).

## Introducing guard

Sometimes you want to check a condition and only continue executing a function if the condition is true, such as when you use optionals.

## Nil coalescing

You can use nil coalescing to unwrap an optional no matter what, and in the case of nil, you'll use a default value. 

## Challenges

See solutions [here](https://github.com/raywenderlich/sa-materials/blob/editions/7.0/06-optionals/projects/challenge/06-optionals-challenges.playground/Contents.swift). 