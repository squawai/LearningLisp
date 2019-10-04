#lang racket
;; factorial: test for recursion

(define (fact x)
  (if (= x 0)
      1
      (* x (fact (- x 1)))))

(fact 13)