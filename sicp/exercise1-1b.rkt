#lang racket

(define a 0)
(define b -4)
(if (and (> b a) (< b (* a b)))
    b
    a)
