#lang racket

;; Definition of Ackermann's function:

(define (Ack x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (Ack (- x 1)
                   (Ack x (- y 1))))))

(display "if x=1 and y=10, then ")
(display (Ack 1 10))

(display " Next, if x=2 and y=4, then ")
(display (Ack 2 4))

(display " Finally, if x=3=y, then ")
(display (Ack 3 3))


;; new functions obtained by Ackerman's function:

(define (f n) (Ack 0 n))
(define (g n) (Ack 1 n))
(define (h n) (Ack 2 n))
(define (k n) (* 5 n n))

