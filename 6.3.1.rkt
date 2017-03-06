;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.3.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct movie (title producer))
(define movie1 (make-movie 'a "b"))
(movie-title movie1)
(movie-producer movie1)

(define-struct boyfriend (name hair eyes phone))
(define b (make-boyfriend "han" 'black 'brown 010))
(boyfriend-name b)
(boyfriend-hair b)
(boyfriend-eyes b)
(boyfriend-phone b)

(define-struct cheerleader (name number))
(define c (make-cheerleader 'a 1))

(cheerleader-name c)
(cheerleader-number c)

(define-struct cd (artist title price))
(define a (make-cd 'a 'b 1500))
(cd-artist a)
(cd-title a)
(cd-price a)

(define-struct sweater (material size producer))
(define w (make-sweater 'silk 90 12000))
(sweater-material w)
(sweater-size w)
(sweater-producer w)