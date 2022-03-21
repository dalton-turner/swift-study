# Swift Apprentice - Chapter 7: Arrays, Dictionaries, & Sets

## Key points

Sets:
- Are unordered collections of unique values of the same type. 
- Are most useful when you need to know whether something is included in the collection or not. 

Dictionaries:
- Are unordered collections of key-value pairs
- The keys are all of the same type, and the values are all of the same type. 
- Use subscripting to get values and to add, update, or remove pairs. 
- If a key is not in a dictionary, lookup returns nil.
- The key of a dictionary must be a type that conforms to the Hashable protocol. 
- Basic Swift types such as String, Int Double are Hashable out of the box. 

Arrays:
- Are ordered collections of values of the same type. 
- Use subscripting, or one of the many properties and methods, to access and update elements.
- Be wary of accessing an index that is out of bounds. 

## Intro

Understanding big-o notation (time it takes to work with a collection type) is important to understand since collections can contain vast amounts of data. Depending on your use case, you'll want to use the collection type most suitable for the type of work you want to do. 

## Mutable vs. Immutable Collections

If a collection doesn't need to change after you've created it, you should make it immutable. If it needs to be updated, you should make it mutable. 

## Arrays

An ordered collection of values of the same type. Elements are zero-indexed. Arrays are useful when you want to store your items in a particular order. 

## Dictionaries

A dictionary is an unorderd collection of pairs, where each pair comprises a key and a value. All keys are unique. The same key cannot appear twice in a dictionary, but keys may point to the same value. All keys must be of the same type, and all values must be of the same type. 

## Sets

A set is an unorderred collection of unique values of the same type. This can be extremely useful whe you want to ensure that an item doesn't appear more than once in your collection and when the order of your items isn't important. 

You use array literals to create a set with initial values. 

## Challenges

See solutions [here](https://github.com/raywenderlich/sa-materials/blob/editions/7.0/07-arrays-dictionaries-sets/projects/challenge/arrays-dictionaries-sets-challenges.playground/Contents.swift). 