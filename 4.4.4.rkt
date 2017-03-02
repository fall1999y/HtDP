;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.4.4) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; how-many: number number number -> number
(define (how-many a b c)
  (cond [(= a 0) 0]
        [(> (expt b 2) (* 4 a c )) 2]
        [(= (expt b 2) (* 4 a c )) 1]
        [(< (expt b 2) (* 4 a c )) 0]
        ))

(how-many 1 0 -1)
(how-many 2 4 2)
(how-many 0 2 3)

(how-many 1 2 1)
(how-many 2 4 1)
(how-many 2 4 3)
(how-many 1 0 -1)
