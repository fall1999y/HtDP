;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 5.1.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp")) #f)))
;; check-guess : number number -> symbol
;;
(define (check-guess guess target)
  (cond
    [(< guess target) 'TooSmall]
    [(> guess target) 'TooLarge]
    [(= guess target) 'Perfect]
    )
  )

(check-guess 2 1)
(check-guess 1 1)
(check-guess 0 1)

(guess-with-gui check-guess)
