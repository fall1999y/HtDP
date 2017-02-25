#lang racket
;; FtC : number -> number
;;
(define (FtC number)
  (/ (- number 32) 1.8))

;; CtF : number -> number
;;
(define (CtF number)
  (+ (* number 1.8) 32)
  )

(FtC 32)
(CtF 32)

;; I : number -> number
;;
(define (I number)
  (CtF (FtC number)))

(I 32)