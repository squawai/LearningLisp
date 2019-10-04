#lang racket
;; Print the alphabet
;; my first Lisp code
(for ([i (in-range 26)])
  (display
   (integer->char
    ( + i (char->integer #\a)))))