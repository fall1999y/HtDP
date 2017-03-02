;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 5.1.4) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp")) #f)))
;; how-many: number number number -> number
(define (how-many a b c)
  (cond [(= a 0) 0]
        [(> (expt b 2) (* 4 a c )) 2]
        [(= (expt b 2) (* 4 a c )) 1]
        [(< (expt b 2) (* 4 a c )) 0]
        ))

;; what-kind : number number number -> symbol
;;
(define (what-kind a b c)
  (cond
    [(= 2 (how-many a b c)) 'two]
    [(= 1 (how-many a b c)) 'one]
    [(= 0 (how-many a b c)) 'none]
    )
  )

(what-kind 1 2 1)
(what-kind 2 4 1)
(what-kind 2 4 2)
(what-kind 2 4 3)
(what-kind 1 0 -1)