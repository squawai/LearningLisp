# note on section 1.1.3 in SICP

Evaluating Combinations

## memorandum


### Keywords

* tree accumulation
* special form


## Summary

1. How interpreter follows a procedure:
	1. Evaluate the expressions of the combination, and
	1. Apply the procedure to the arguments.
1. the evaluation rule is *recursive* in nature.
1. the idea of recursion is succinctly used to express what is viewed as a rather complicated process.
1. the combination expression has a form of tree.
1. Recursion is a very powerful technique for dealing with tree-structure combinations.
1. in this recursion, Base Case is Primitive Expression.
1. there are three rules for Primitive Expressions:
	1.the values of numerals are the numbers that they name,
	1. the values of built-in operators are the machine instruction sequence that carry out the corresponding operations, and
	1. the values of other names are the objects associated with those names in the environment.
1. the second rule can be regarded as a special case of the third one
1. We need to determine the meaning of the symbols.
1. the *Environment* provides a context.
1. **Remark**: the evaluation rule given above does not handle definitions.
1. for instance, evaluating `(define x 3)` does not apply `define` to two arguments.
1. `define` associates `x` with a value.
1. `(define x 3)` is not a combination
1. such exceptions to the general evaluation rule are called *special forms*.

## Definitions

* succinct: adj. clear and not containing many words.
