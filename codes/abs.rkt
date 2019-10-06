#lang racket
;; test for if

(define (zettaichi n)
  (if (< n 0)
      (- 0 n)
      n
      )
  )

(zettaichi -3)
(zettaichi 5)