# notes on section 1.1.7

Example: Square Roots by Newton's Method

## memorandum

* There is an important difference between mathematical functions and computer procedures.
* Procedures must be effective.
* Consider the problem of computing square roots.
* We can define the square-root function and the definition will be rephrased in pseudo-Lisp as follows:

```scheme
(define (sqrt x)
  (the y (and >= y 0)
         (= (square y) x)))
```

In mathematics,
we are usually concerned with declarative (what is) descriptions,
whereas in computer science we usually concerned with imperative (how to) descriptions.

* The common way to compute square roots is to use Newton's method,
* which says that whenever we have a guess `y` for the value of the square root of number `x`, we can perform a simple manipulation to get a better guess by averaging `y` with `x/y`.
* For example, we can compute the square root of `2` as follows:
	1. for a guess `1` the quotient is `2`, hence the average is `1.5`.
	1. for a guess `1.5` the quotient is `1.333...`, hence the average is `1.41671.
	1. for a guess `1.41671` the 
	1. for a guess `1.4142` the quotient is ... and so on
* Continuing this process, we obtain better and better approximations to the square root.


## Keywords

* the distinction between declarative knowledge and imperative knowledge

## Summary


## Definition

* beg
* declarative
* imperative
