;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 2.2.4) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (convert3 a b c)
  (+ (* c 100) (* b 10) a))

(convert3 1 2 3)

;; exercise 4.2.4
(= 321 (convert3 3 2 1))
