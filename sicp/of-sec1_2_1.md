# notes on section 1.2.1 

Linear Recursion and Iteration

## memorandum

```scheme
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1 )))))
```

* Carrying out a *recursive* process requires that the interpreter keep track of the operations to be performed later on. 
* In the computation of `n!`, the length of the chain of deferred multiplications,
* and hence the amount of information needed to keep track of it, grows linearly with `n`.
* Such a process is called a *linear recursive process*.
* In this case there is some additional "hidden" information,
	* maintained by the interpreter and not contained in the program variables,
* which indicates "where the process is" in negotiating the chain of deferred operations.

```scheme
(define (factorial n)
 (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
        (+ counter 1)
	max-count)))
```

* An *iterative process* is 
	* one whose state can be summarized by a fixed number of *state variables*,
	* together with a fixed rule that describes how the state variables should be updated
		* as the process moves from state to state and
		* an (optional) end test that specifies conditions under which process should terminate.
* In computing `n!`, the number of steps required grows linearly with `n`.
* Such a process is called a *linear iterative process*.
* The variables in program of an iterative process provide a complete description of the state of the process at any point.



## Keywords

* deferred operation
* recursive process
* linear recursive process
* iterative process
* state variable

## Definitions

* stipulation: n. a condition or requirement that is specified or demanded as part of an agreement
* maintain: v. cause or enable a condition or situation to continue
* exceed: be greater in number or size than a quantity, number, or other measurable thing
* recast: v. give a metal object a different form by melting it down and reshaping it
* contraction: n. the process of becoming smaller 
	* contract: v.
* defer: v. put off (an action or event) to a later time; postpone
* terminate: v. bring to an end
* resume: v. begin again or continue after a pause or interruption
* supply: v. make something needed available to someone
