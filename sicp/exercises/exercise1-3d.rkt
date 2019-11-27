#lang racket

;;Exercese 1.3 in SICP
;; Define a procedure that takes three numbers as arguments and
;; returns teh sum of square of the two larger numbers

(define a 7)
(define b 7)
(define c 1)
(define (>= x y)
        (or (> x y)(= x y)))

(define x (if (>= a b)
        a
        b))
(define z (if (< a b)
        a
        b))
(if (>= c z)
    (* x c)
    (* a b)
    )