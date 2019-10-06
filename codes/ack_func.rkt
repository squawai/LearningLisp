#lang racket
;; a practice to define an Ackermann function

(define (suc n)
  (+ n 1))
  
(define (ack m n)
  (cond
    ((= m 0) suc n)
    ((and (> m 0) (= n 0)) ack (- m 1) 1)
    ((and (> m 0) (> n 0)) ack (- m 1) (ack m (- n 1)))
    )
  )
  

(ack 3 2)