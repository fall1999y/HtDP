;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.2.3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; equation1 : number -> boolean
;;
(define (equation1 n)
  (= 62 (+ (* 4 n) 2)))

(equation1 10)
(equation1 12)
(equation1 14)

;; equation2 : number -> boolean
;;
(define (equation2 n)
  (= 102 (* 2 (expt n 2))))

(equation2 10)
(equation2 12)
(equation2 14)

;; equation3 : number -> boolean
;;
(define (equation3 n)
  (= 462 (+ (* 4 n n) (* 6 n) 2)))
(equation3 10)
(equation3 12)
(equation3 14)
