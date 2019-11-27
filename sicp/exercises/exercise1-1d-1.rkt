#lang racket

(define a 3)
(define b 4)
(+ 2 (if (> b a) b a))