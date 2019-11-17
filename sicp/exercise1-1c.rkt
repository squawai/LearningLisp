#lang racket

(define a 3)
(define b (+ a 1))
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))