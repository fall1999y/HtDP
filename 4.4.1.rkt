;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.4.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; interest-rate : number -> number
;;
(define (interest-rate n)
  (cond [(<= n 1000) 0.04]
        [(<= n 5000) 0.045]
        [else 0.05]))

(interest-rate 1000)
(interest-rate 5000)
(interest-rate 5001)
;; interest : number -> number
;;
(define (interest n)
  (* (interest-rate n) n))
(interest 1000)
(interest 5000)
(interest 5001)