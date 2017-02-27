;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.1.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; x = 4, y =2 , z = 7/2

(define x 4)
(define y 2)
(define z 7/2)

;; true
(> x 3)
;; false
(> y 3)
;; true
(> z 3)

;; false
(and (> 4 x) (> 3 x))
;; true
(and (> 4 y) (> 3 y))
;; false
(and (> 4 z) (> 3 z))

;; false
(= (* x x) x)
;; false
(= (* y y) y)
;; false
(= (* z z) z)
