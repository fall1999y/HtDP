;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.5.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; movie is struts
;; (make-movie title producer)
(define-struct movie (title producer))

;; movie-template : movie -> ???
(define (movie-template a-movie)
  ... (movie-title a-movie) ...
  ... (movie-producer a-movie) ...


;; boyfriend is struct
;; (make-boyfriend  name hair eyes phone)
(define-struts boyfriend (name hair eyes phone))

;; boyfriend-template : boyfreind -> ???
(define (boyfriend-template a-boyfriend)
  ... (boyfriend-name a-boyfreind) ...
  ... (boyfriend-hair a-boyfreind) ...
  ... (boyfriend-eyes a-boyfreind) ...
  ... (boyfriend-phone a-boyfreind) ...)


;; cheerleader is struct
;; (make-cheerleader name number)
(define-struct cheerleader (name number))

;; cheerleader-template : cheerleader -> ???
(define (cheerleader-template a-cheerleader)
  ... (cheerleader-name a-cheerleader) ...
  ... (cheerleader-number a-cheerleader) ...)

;; cd is struct
;; (make-cd artist title price)
(define-struct cd (artist title price))

;; cd-template : cd -> ???
(define (cd-template a-cd)
  ... (cd-artist a-cd) ...
  ... (cd-title a-cd) ...
  ... (cd-price a-cd) ...)

;; sweater is struct
;; (make-sweater material size producer)
(define-struct sweater (meterial size producer))

;; (define a-sweater (make-sweater 'a 10 'someone))
;; sweater-template : sweater -> ???
(define (sweater-template a-sweater)
  ... (sweater-meterial a-sweater) ...
  ... (sweater-size a-sweater) ...
  ... (seater-producer a-sweater) ...)
  