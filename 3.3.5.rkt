;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 3.3.5) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; height : t g -> h
;;
(define (height g t)
  (/ (* (* g t) t) 2))
(height 10 1)
(height 10 5)
(height 10 10)

(define (speedfromtime g t)
  (* g t))

(define (heightfromspeed t v)
  (* t v))

(define (height2 g t)
  (/ (heightfromspeed t (speedfromtime g t)) 2 ))

(speedfromtime 10 1)
(heightfromspeed 10 5)

(height2 10 1)
(height2 10 5)
(height2 10 10)