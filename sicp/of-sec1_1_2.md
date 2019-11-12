# note notes on section 1.1.2 in SICP

## memorandum

### Keywords

* variable
* value
* global environment


## Summary

* Naming is one of critical aspect of a programming.
* a programming language has a function to use names to refer to objects of computation.
* the name identifies a *variable* whose *value* is the object,
* in Scheme, we name things with `define`: `(define size 2)`.
* By tying `(difine size 2)`, the interpreter can associate the value `2` with the name `size`.
* This command allows us to refer to the value `2` by name `size`.
* `denine` is the simplest way to abstract in Scheme/
* In general, computational objects may be very complex,
* and it would be hard to have to remember and repeat their details each time we want to use them.
* By abstraction name-object association encourages the incremental development and testing of programs
* Almost (Lisp) complex programs consist of computational object which have relatively simple procedures.
* And more, the structure of it is, roughly speaking, 
* Since we can associate values with symbols and later retrieve them, the interpreter must keep track of name-object pairs, by maintaining some sort of memory.
* The *global environment* is the feature of this memory.


## Denotations 

* retrieve: v. to find something and bring it back
