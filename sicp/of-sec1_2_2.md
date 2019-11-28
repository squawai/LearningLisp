# notes on section 1.2.2

Tree Recursion

## memorandum

* consider computing the sequence of Fibonacci numbers.
* we can immediately translate the general definition into a recursive procedure for computing Fibonacci numbers:

```scheme
(define (fib n)
  (cond ((= n 0) 0)
    ((= n 1) 1)
    (else (+ (fib (- n 1))
             (fib (- n 2))))))
```

* In this computation, to compute `(fib 5)`, we compute `(fib 4)` and `(fib 3)`,
* to compute `(fib 4)`, we compute `(fib 3)` and `(fib 2)`, and so on.
* The evolved process has a form like a tree.
* The branches split into two at each level;
* this reflects the fact that the `fib` procedure calls itself twice each time it is invoked.
* This procedure is instructive as a prototypical *tree recursion*,
* but it is a terrible way to compute Fibonacci numbers
* since it does so much redundant computation.
* Notice that in the tree of computing `(fib 5)`, the sub-tree of `(fib 3)` occurs twice, `(fib 2)` tree times.
* We can understand how this procedure definition bad is by showing that the value of `Fib (n)` grows exponentially with n.
* We also can check it by appealing the fact that for the `r`, which satisfies the equation `r * r = r + 1`, `Fib (n)` is the closest integer to `(r * r) / (5)^(1/2)`.
* In general, the number of steps required by a tree-recursive process will be proportional to the number of nodes in the tree,
* while the space required will be proportional to the maximum depth of the tree.



* We can also formulate an iterative process for computing the Fibonacci numbers.
* The idea is to use a pair of integers `a` and `b`, initialized to `Fib (1) = 1` and `Fib (0) = 0`,
* and to repeatedly apply the simultaneous transformations:

```
a <- a +b,
b <- a
```

* After applying this transformation *n* times, `a` and `b` will be equal, respectively, to `Fib (n+1)` and `Fib (n)`.
* Let us compute Fibonacci numbers iteratively using the following procedure:

```scheme
(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))
```

* This second method to compute `Fib (n)` is a linear iteration.
* The difference in number of steps required by the two methods is very large, even for small inputs.

* We must NOT conclude that tree-recursive processes are useless.
* When we consider process that operate on hierarchically structured data rather than numbers,
* we will find that *tree recursion is a natural and powerful tool*.
* But even in numerical operations, tree-recursive processes can be useful in helping us to understand and design programs[^1].
* To formulate the iterative algorithm required noticing that the computation could be recast as an iteration with three variables.

[^1]: From simple view of Recursion Theory, the existence of tree-recursive process which can compute the desired guarantees that the our purpose can be done. 

* **Example: Counting change**

> How many different ways can we make change of $1.00, 
> given half-dollars, quarters, dimes, nickels, and pennies?
> More generally, can we write a procedure to compute the number of ways to change any given amount of money ?

* The number of way to change amount `a` using `n` kinds of coins equals
	* the number of ways to change amount `a` using all but the first kind of coin, plus
	* the number of ways to change amount `a - d` using all `n` kinds of coins, where `d` is the denomination of the first kind of coin.
* The ways to make change can be divided into two groups:
	1. those that do not use any of the first kind of coin, and
	2. those that do.
* Therefore, the total number of ways to make change for some amount is equal to the number of ways to make change for the amount without using any of the first kind of coin, plus
* the number of ways to make change assuming that we do use the first kind of coin.
* But the later number is equal to the number of the number of ways to make change for the amount that remains after using a coin of the first kind.

* Now we can recursively reduce the problem of changing a given amount to the problem of changing smaller amounts using fewer kinds of coins.
	* if `a` is exactly `0`, we should count that as 1 way to make change.
	* If `a` is less than `0`, we should count that as 0 ways to make change.
	* if `n` is `0`, we should count that as 0 ways to make change.
* We can easily translate this description into a recursive procedure:

```scheme
(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
    ((or (< amount 0)
      (= kinds-of-coins 0))
      0)
      (else
      (+ (cc amount (- kinds-of-coins 1))
        (cc (- amount (first-denomination kinds-of-coins))
        kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5_ 50))))
```



## Keywords

* *tree recursion*

## Definitions

* instructive: adj. useful and informative
* redundant: adj. not or no longer needed or useful 
* initialize: v. (often **to be initialized to**) set to the value or put in the condition appropriate to the start of an operation
* simultaneous: adj. occurring, operating, or done at the same time
* amount: n. a quantity of something, especially the total of a thing or things in number, size, value, or extent
* denomination: n. the face value of a banknote, coin, or postage stamp
* convince: v. cause (someone) to be believe firmly in the truth of something
* degenerate: adj. having lost the physical, mental, or moral qualities considered normal and desirable; lacking some usual or expected property or quality
* redundancy: n. the state of being not or no longer useful
