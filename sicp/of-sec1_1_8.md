# notes on section 1.1.7

Procedures as Black-Box Abstractions

## memorandum


* The problem of computing would often beaks up naturally into a number of sub-problems.
* According to this, the program can be viewed as a cluster of procedures.  
* Each procedure accomplishes an identifiable task that can be used as a module in defining other procedures.
* We are able to regard the procedure mirroring the (main) problem as a "black box".  
* Namely, we are concerned with the fact that it computes its result rather than the way that it computes its result.
* As far as the procedure mirroring the sub-problem is concerned, 
* the main "procedure" is a just abstraction of the procedure, a so-called *procedural abstraction*.
* We often get a procedure from another programmer as a black box,
* so we, users, should not need to know how the procedure is implemented in order to use it.

For instance, the `sqrt` we have defined in the preceding sections can be divided into a `sqrt-iter`, 
`sqrt-iter` into `good-enough?` and `improve`, `good-enough?` into `suare` and `abs` etc....



* the meaning of a procedure should be independent of the parameter names used by its author.  
* Consequently, the parameter names of a procedure must be local to the body of the procedure.  
* since the the values of formal parameters in sub-problems may be requested by the main problem after the main problem is done computing,
* the values must not be affected by the procedure for the main problem.  
* This principle avoids confusing with parameters.  

* In the procedure definition, a formal parameter of the procedure play the role in that it does not matter what name the formal parameter has.
* Such a name is called a *bound variable*.  
* the procedure definition *binds* its formal parameters.  
* We can change bound variables without changing the procedure definition.  
* if a variable is not bound, we say that it is *free*.  
* The set of expressions for which a binding defines a name is called the *scope* of that name.

For instance, consider the following definition of `good-enough?`:

```scheme
(define (good-enough? guess x)
  (< (abs (- square guess) x)) 0.001)
```

* running the procedure `square` must not affect the values of `x` used by `good-enough?`.  
* This is because that the parameter `x` is local to the bodies.  
* Bound variables in the code above: `guess` and `x`.  
* Free variables in the code above: `abs` and `square`.
* For example, `good-enough?` will compute a different function when we substitute `cos` for `abs` in its definition.


* The issue with the program is that the important procedure to users is the main procedure itself.
* the reason we write programs to work together with the main program is that it needs them.

* We want to localize the sub-procedures, hiding them inside the main procedure so that it could coexist with other successive the sub-procedures.
* To make this possible, we allow a procedure to have internal definitions that are local to that procedure.
* See the following example of definition of `sqrt`:

```scheme
(define (sqrt x)
 (define (good-enough? guess x)
   (< (abs (- (square guess ) x)) 0.001))
 (define (improve guess x)
   (average guess (/ x guess)))
 (define (sqrt-iter guess x)
   (if (good-enough? guess x)
   guess
   (sqrt-iter (improve guess x) x)))
(sqrt-iter 1.0 x))
```

* Such nesting of definitions, called *block structure*, is basically the right solution to the simplest name-packing problem.  
* But there is a better idea unveiled here.
* Since the definition of `sqrt` above binds `x`,
* the procedures `good-enough?`, `improve`, and `sqrt-iter`, which are defined internally to `sqrt`, are in the scope of `x`.  
* Thus, we do not need to pass `x` explicitly to each of these procedures.
* Instead, we allow `x` to be a **free variable** in the internal definitions, as shown below.


```scheme
(define (sqrt x)
 (define (good-enough? guess x)
   (< (abs (- (square guess ) x)) 0.001))
 (define (improve guess x)
   (average guess (/ x guess)))
 (define (sqrt-iter guess)
   (if (good-enough? guess)
   guess
   (sqrt-iter (improve guess))))
(sqrt-iter 1.0))
```

* In the definition above, `x` gets its value from the argument with which the surrounded procedure `sqrt` is called.
* This discipline is called *lexical scoping*.

We will use block structure extensively to help us beak up large programs into pieces with which is easy to deal.

The idea of block structure appears in most advanced programming languages and
is important tool for helping to organize the construction of large programs.



## Keywords

* recursive: *the procedure is defined in terms of itself*
* procedural abstraction 
* bound variable
* free variable
* scope
* capturing
* block structure
* lexical scoping

## Summary



## Definition 
* mutual: adj. shared by two or more people
* disturb: v. to make someone feel worried or upset
* circular: adj. moving in a direction that takes you back to where you started
* cluster: 
* suppress: v. to control a feeling, so that you do not show it or it does not affect you
* abstract: adj. based on ideas rather than specific examples or real events
* implement: v. to begin to use a plan or system
* profound: adj. showing a lot of knowledge and understanding a subject
* bind: v. to tie something with rope or string
* capture: v. to take someone as a prisoner
* available: adj. able to be seen, used, bought etc.
* auxiliary: adj. giving additional help or support to others
* lurk: v. to wait in hiding, especially for some bad purpose
* lexical:  
* extensive: adj. spreading over a large area
* tractable: 
