# Swift Apprentice - Chapter 9: Strings

## Strings as collections

Strings are collections, and have associated options (.count, etc.). However, you cannot access individual characters using notation similar to arrays. This is because characters do no thave a fixed size. 

## Grapheme clusters

Grapheme clusters are represented by the Swift type Character. A grapheme cluster is a representation of combined strings. 

You can access the underlying Unicode code points in the string via the unicodeScalars view, which is also a collection.

## Equality with combining characters

Swift considers strings that contain grapheme clusters to be equal to strings for the same word without grapheme clusters. It does this using canonicalization. 

## Strings as bi-directional collections

Changing type in Swift is a smart optimization. Thin wrapper around old type. 

## Raw strings

Wrapping strings in hashtags prevents compilation. A raw string! 

## Substrings

Substrings share the same memory as their parent strings. This is a memory optimization technique. When you want to actually extract the stubstring as a new string, only then do you use new memory.

## Character properties

There are many character properties that can be utilized. This section covers ASCII and a handful of others. 

## Encoding

The choice of how to store a strings is known as Encoding. 



