#lang racket

(define x '(2 3 5 7 11 13 17 19))
x
(cdr x)
(cdr (cdr x))
(cdr (cdr (cdr x)))
(cdr (cdr (cdr (cdr x))))
(cdr (cdr (cdr (cdr (cdr x)))))
(cdr (cdr (cdr (cdr (cdr (cdr x))))))
(cdr (cdr (cdr (cdr (cdr (cdr (cdr x)))))))
(cdr (cdr (cdr (cdr (cdr (cdr (cdr (cdr x))))))))
(car x)
(car (cdr x))
(null? (cdr (cdr (cdr (cdr (cdr (cdr (cdr (cdr x)))))))))
(null? (cdr (cdr (cdr (cdr (cdr (cdr (cdr x))))))))