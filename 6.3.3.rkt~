;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.3.3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct fighter (name acceleration range))

;; within-range : fighter number -> boolean

(define (within-range f distance)
  (>= (fighter-range f) distance))

(define f22 (make-fighter 'f22 20000 200))
(within-range f22 100)
(within-range f22 200)
(within-range f22 201)

;; reduce-range : fighter -> fighter
(define (reduce-range f)
  (make-fighter (fighter-name f) (fighter-acceleration f) (* 0.8 (fighter-range f))))

(define f21 (reduce-range f22))

(fighter-name f21)
(fighter-acceleration f21)
(fighter-range f21)