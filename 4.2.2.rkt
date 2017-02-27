;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.2.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; in-interval-1? : number -> boolean
;; x is -3 over and 0 under
(define (in-interval-1? x)
  (and (> x -3) (< x 0)))

;; false
(in-interval-1? -3)
;; true
(in-interval-1? -2)
;; false
(in-interval-1? 0)

;; in-interval-2? : number -> boolean
;; x is 1 under or 2 over
(define (in-interval-2? x)
  (or (< x 1) (> x 2)))

;; false
(in-interval-2? 1)
;; true
(in-interval-2? -2)
;; true
(in-interval-2? 3)
;; false
(in-interval-2? 2)

;; in-interval-3? : number -> boolean
;; x is not[1~ and ~5]

(define (in-interval-3 x)
  (not (and (>= x 1) (<= x 5))))

;; true
(in-interval-3 -2)