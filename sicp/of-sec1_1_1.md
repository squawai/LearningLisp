# notes on section 1.1.1 in SICP

## memorandum

### Keywords

* expression
* evaluate
* combination
* operator
* operand
* argument
* prefix notation
* nest
* pretty-printing
* read-eval-print-loop


### Summary

1. A Typical kind of primitive expression is a number
1. We can combine numbers with primitive procedure such as `+` or `*`
1. A *combination* is an expression bound in parentheses.
	1. In parentheses, there is a list of expressions
	1. an *operator* is put in the leftmost position in the list
	1. *operands* are put in the right-side of the operator
1. This convention of placing the operator to the left of the operands is known as *prefix notation*
	1. By prefixing an operator, this notation can follow procedures with arbitrary number of arguments without ambiguity
	1. By prefixing an operator, the notation can treat combinations as operands, namely, nested combinations
	1. Since we can make a number of a combinations in nested combinations as deep as we want,
	1. We can and should help ourselves by writing an complex expression in the pretty-printing form,
	1. in which each long combination is written so that one line has one operand
1. The interpreter works in the same basic cycle:
	1. It reads an expression from the terminal,
	1. evaluates the expression,
	1. and prints the result



## Definitions

* accommodate

