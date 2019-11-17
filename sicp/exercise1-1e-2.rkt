#lang racket

(define a 3)
(define b 3)

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))