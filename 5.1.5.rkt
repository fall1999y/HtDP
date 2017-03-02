;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 5.1.5) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp")) #f)))
;; check-color : symbol symbol symbol symbol -> symbol
;;
(define (check-color a b c d)
  (cond
    [(and (symbol=? a c) (symbol=? b d)) 'Perfect]
    [(or (symbol=? a c) (symbol=? b d)) 'OneColorAtCorrentPosition]
    ;;[(or (symbol=? a c) (symbol=? a d) (symbol=? b c) (symbol=? b d)) 'OneColorOccurs]
    [(or (symbol=? a d) (symbol=? b c)) 'OneColorOccurs]
    [else 'NothingCorrent]))

(check-color 'black 'white 'black 'white)
(check-color 'black 'white 'black 'red)
(check-color 'black 'white 'white 'black)
(check-color 'red 'white 'blue 'black)

(master check-color)