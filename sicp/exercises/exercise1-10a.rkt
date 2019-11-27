#lang racket

;; Definition of Ackermann's function:

(define (Ack x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (Ack (- x 1)
                   (Ack x (- y 1))))))

;(display "if x=1 and y=10, then ")
;(display (Ack 1 10))

;(display " Next, if x=2 and y=4, then ")
;(display (Ack 2 4))

;(display " Finally, if x=3=y, then ")
;(display (Ack 3 3))


;; new functions obtained by Ackerman's function:

(define (f n) (Ack 0 n))
(define (g n) (Ack 1 n))
(define (h n) (Ack 2 n))
(define (k n) (* 5 n n))

(display "the values of f(0), f(1), f(2), f(3), f(4), f(5), and f(13) are respectively \r\n")
(display (f 0))
(display "," )
(display (f 1))
(display ",")
(display (f 2))
(display ",")
(display (f 3))
(display ",")
(display (f 4))
(display ",")
(display (f 5))
(display ", and ")
(display (f 13))

(display ".\r\n Hence, the function f(n) means n times two")

(display "\r\nthe values of g(0), g(1), g(2), g(3), g(4), g(5), and g(13) are respectively \r\n")
(display (g 0))
(display "," )
(display (g 1))
(display ",")
(display (g 2))
(display ",")
(display (g 3))
(display ",")
(display (g 4))
(display ",")
(display (g 5))
(display ", and ")
(display (g 13))

(display ".\r\n Hence, the function g is a power function.\r\n")

(display "The values of h(0), h(1), h(2), h(3), and h(4) are respectively \r\n")
(display (h 0))
(display "," )
(display (h 1))
(display ",")
(display (h 2))
(display ",")
(display (h 3))
(display ", and ")
(display (h 4))

(display ".\r\n The function h is a tetration\r\n")

(display "\r\nthe values of k(0), k(1), k(2), k(3), and k(4) are respectively \r\n")
(display (k 0))
(display "," )
(display (k 1))
(display ",")
(display (k 2))
(display ",")
(display (k 3))
(display ", and ")
(display (k 4))
