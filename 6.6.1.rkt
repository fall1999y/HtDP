;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.6.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; circle is struct
;; (make-circle a-posn radius color)
;; a-posn is struct, radius is number, color symbol

;; posn is struct
;; (make-posn x y)
;; (define a-posn (make-posn 5 10))

;; fun-for-circle-template:circle->???
;;(define (fun-for-circle-template a-circle)
;;  ... (circle-a-posn a-circle) ...
;;  ... (circle-radius a-circle) ...
;;  ... (circle-color a-circle) ...
;;  )
