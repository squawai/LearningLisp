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

* To formalize the process in terms of procedures, we start with a value for the radicand and a value for the guess.
* If the guess is good enough for our purpose, we are done;
* if not, we must repeat the process with an improved guess:

```scheme
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve gueee x) x)))
```

* A guess is improved by averaging it with the quotient of the radicand and the old guess:

```scheme
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
```

* We also have to state what we mean by "good enough".
* The following is a brief illustration, but it is not really a very good test.
* The idea is to improve the answer until it is close enough so that its square differ from the radicand by less than a predetermined tolerance:

```scheme
(define (good-enough? guess x)
 (< (abs (- (square guess) x)) 0.001))
```

*Finally, we need a way to get started.
* For instance, we can always guess that the square root of any number is 1:

```scheme
(define (sqrt x)
  (sqrt-iter 1.0x))
```

* In our `sqrt` program, even though we did not use iterative constructs such as looping,
* `sqrt-iter` demonstrates how iteration can be accomplished using no special construct other that the ordinary ability to call a procedure.



## Keywords

* the distinction between declarative knowledge and imperative knowledge

## Summary


## Definition

* beg
* declarative
* imperative
* radicand
* tolerance

