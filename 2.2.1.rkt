;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 2.2.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (FtoC number)
  (/ (- number 32) 1.8))

(FtoC 32)

(convert-gui FtoC)
(convert-repl FtoC)
(convert-file "in.dat" FtoC "out.dat")

;; exercise 4.2.4
(= 0 (FtoC 32))