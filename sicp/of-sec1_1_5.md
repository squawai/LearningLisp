# notes on section 1.1.5

The Substitution Model for Procedure Application

## memorandum

```scheme
(define (square x) ( * x x ))
(define (sum-of-suqares x y)
  (+ (square x) (square y)))
(define (f a)
  (sum-of-squares (+ a 1)(* a 2)
```

For compound procedures,
the application process is as follows:

> To apply a compound procedure to arguments,
> evaluate the body of the procedure with each formal parameter replaced by the corresponding argument.

To illustrate this process,
let us evaluate the combination above

`(f 5)`

We begin by retrieving the body of `f`:

`(sum-of-squares (+ a 1) (* a 2))`

Then we replace the formal parameter `a` by the argument `5`:

`(sum-of-squares (+ 5 1) (* 5 2))`

Thus the problem reduces to the evaluation of a combination whose operator is `sum-of-squares`.
We must evaluate the operator to get the procedure to be applied,
and we must evaluate the operands to get the arguments.
Now `(+ 5 1)` produces `6` and `(* 5 2)` produces `10`,
so we must apply the `sum-of-squares` procedure to `6` and `10`.
These values are substituted
for the formal parameters `x` and `y` in the body of `sum-of-squares`,
reducing the expression to

`(+ (square 6) (square 10))`

Using the definition of `square`,
this reduces to

`(+ (*6 6) (* 10 10))`

which reduces my multiplication to

`(+ 36 100)`

and finally to

`136`



### Keywords

* substitution model
* normal-order evaluation
* appreciative-order evaluation
* mutable data


## Summary

* The process in the memorandum above is called *substitution model* for procedure application.
* A model determines the "meaning" of procedure application.
* But we stress some points:
	* The purpose of the substitution is to help up think about procedure application, not to provide a description of how the interpreter really works.
	* Over the course of SICP, a sequence of increasingly elaborate models of how interpreters work will be presented.
	* The substitution model is only a way to get started thinking formally about evaluation process
	* the use of procedures with "mutable data," it will be seen that the substitution model breaks down and must be replaced by a more complicated model of procedure application.
* Our description of evaluation given hitherto, in which the interpreter evaluate the arguments and then apply, is called *applicative-order evaluation*.
* In contrast to this, there is an alternative evaluation method known as *normal-order evaluation*, which proceed as follows:
	1. `(f 5)`
	1. `(sum-of-squares (+ 5 1) (* 5 2))`
	1. `(+ (square (+ 5 1) (square (* 5 2))))`
	1. `(+ (* (+ 5 1) (+ 5 1)) (* (*5 2) (* 5 2)))`
	1. `(+ (* 6 6) (* 10 10))`
	1. `(+ 36 100)`
	1. `136`
* Lisp uses applicative-order evaluation, mainly because normal-order evaluation becomes much more complicated to deal with when we leave the realm of procedures that can be modeled by substitution.



## Definition

* elaborate
* mutable
