;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.4.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; (define (f 1) (+ x 10))
(define (f n) (+ n 10))
(f 1)

;; (define (g x) + x 10)
(define (g x)
  (+ x 10))
(g 2)

;; (define h(x) (+ x 10))
(define (h x)
  (+ x 10))
(h 3)