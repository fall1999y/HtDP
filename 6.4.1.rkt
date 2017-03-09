;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.4.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; a movie is struct 
;; (make-movie symbol symbol)
(define-struct movie (title producer))

;; a boyfriend is struct
;; (make-boyfriend symbol symbol symbol number)
(define-struct boyfriend (name hair eyes phone))

;; a cheerleader is struct
;; (make-cheerleader symbol number)
(define-struct chearleader (name number))

;; a cd is struct
;; (make-cd symbol symbol number)
(define-struct cd (artist title price))

;; a sweater is struct
;; (make-sweater symbol number symbol)
(define-struct sweater (meterial size producer))
