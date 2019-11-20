#lang racket
;;a new version of if

(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;;the square-root program rewritten by using new-if

(define (alyssa-sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

;;the square-root program

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

;; sub-programs

(define (good-enough? guess x)
 (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

;; the main program

(define (alyssa-sqrt x)
  (alyssa-sqrt-iter 1.0 x))

;; displaying the results

(display "the square-root of 2, ")

(display (alyssa-sqrt 2))
(display " v. ")
(display (sqrt 2))

(display " Next, the square-root of 4, ")

(display (alyssa-sqrt 4))
(display " v. ")
(display (sqrt 4))

(display " Next, the square-root of 7, ")

(display (alyssa-sqrt 7))
(display " v. ")
(display (sqrt 7))


(display " Next, the square-root of 9, ")

(display (alyssa-sqrt 9))
(display " v. ")
(display (sqrt 9))


;; Now consider what is happening.