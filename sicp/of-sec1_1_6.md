# notes on section 1.1.6

Conditional Expressions and Predicates


## memorandum


### Absolute value as example

* At this point, we have no way to make tests and to perform different *operations depending on the results of a test*.
* Consider a procedure that computes the absolute value of a number.
	* If `x` is positive, `abs x` must be `x`.
	* If `x` is zero, then `abs x` must be `0`.
	* If `x` is negative, then `abs x` must be `-x`.
* We use `cond` for this construct like 

```scheme
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
	((< x 0) -x)))
```


### Case Analysis

Such a construct is called a **case analysis**,
whose general form is 

```scheme
(cond (<predicate> <consequent expression>)
      (<predicate> <consequent expression>)
      ...
      (<predicate> <consequent expression>))

```


Parenthesized pairs of expression following the symbol `cond` are called **clauses**[^2].
The first expression in each pair is a *predicate*--that is,
an expression whose value is interpreted as either true of false.

[^2]: `cond` stands for "conditional".

Conditional expression are evaluated as follows[^1]:
1. The predicate on the top is evaluated first.  
1. If its value is false, then the predicate on the next line is evaluated.  
1. This process continues until a predicate is found whose value is true,
1. in which case the interpreter returns the value of the corresponding consequent expression of the clause as the value of the conditional expression.

If none of the predicates is found to be true, 
the value of the `cond` is undefined.

[^1]: In this case, I describe the process as if the line break is needed. 



### Keywords


## Summary

## Definitions
