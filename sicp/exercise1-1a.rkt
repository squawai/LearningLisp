#lang racket

(define a 3)
(define b (+ a 1))
(if (and (> b a) (< b (* a b)))
    b
    a)
