#lang racket

(define a 9)
(define b 5)
(+ 2 (if (> b a) b a))