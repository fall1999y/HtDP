;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 5.1.3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp")) #f)))
;; make-number : number number number -> number
;;
(define (make-target a b c)
  (+ (* c 100) (* b 10) a))

(make-target 3 2 1)
;; check-guess3 : number number number number -> symbol
;;
(define (check-guess3 a b c target)
  (cond
    [(> target (make-target a b c)) 'TooSmall]
    [(< target (make-target a b c)) 'TooLarge]
    [(= target (make-target a b c)) 'Perfect]
    )
  )
(check-guess3 3 2 1 321)
(check-guess3 3 2 1 100)
(check-guess3 3 2 1 123)

(guess-with-gui-3 check-guess3)
