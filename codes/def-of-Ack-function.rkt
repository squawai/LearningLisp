#lang racket

(define (Ack x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (Ack (- x 1)
                   (Ack x (- y 1))))))

