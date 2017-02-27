;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.2.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; is-between-3o-7i : number -> boolean
(define (is-between-3o-7i n)
  (and (> n 3) (<= n 7)))

;; false
(is-between-3o-7i 3)
;; true
(is-between-3o-7i 7)
;; true
(is-between-3o-7i 5)
;; false
(is-between-3o-7i 2)
;; false
(is-between-3o-7i 8)

;; is-between-3i-7i : number -> boolean
(define (is-between-3i-7i n)
  (and (>= n 3) (<= n 7)))

;; true
(is-between-3i-7i 3)
;; true
(is-between-3i-7i 7)
;; true
(is-between-3i-7i 5)
;; false
(is-between-3i-7i 2)
;; false
(is-between-3i-7i 8)

;; is-between-3i-9o : number -> boolean
(define (is-between-3i-9o n)
  (and (>= n 3) (< 9 n)))
;; true
(is-between-3i-9o 3)
;; true
(is-between-3i-9o 6)
;; false
(is-between-3i-9o 2)
;; false
(is-between-3i-9o 9)
;; false
(is-between-3i-9o 10)

;; is-between-1o-3o-9o-11o : number -> boolean
(define (is-between-1o-3o-9o-11o n)
  (or (and (> n 1) (< n 3)) (and (> n 9) (< n 11))))

;; false
(is-between-1o-3o-9o-11o 1)
;; true
(is-between-1o-3o-9o-11o 2)
;; false
(is-between-1o-3o-9o-11o 3)
;; false
(is-between-1o-3o-9o-11o 9)
;; true
(is-between-1o-3o-9o-11o 10)
;; false
(is-between-1o-3o-9o-11o 11)

;; is-between-not-1i-3i : number -> boolean
(define (is-between-not-1i-3i n)
  (not (and (>= n 1) (<= n 3))))
;; false
(is-between-not-1i-3i 1)
;; false
(is-between-not-1i-3i 2)
;; false
(is-between-not-1i-3i 3)
;; true
(is-between-not-1i-3i 4)
;; true
(is-between-not-1i-3i 0)

