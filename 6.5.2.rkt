;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.5.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; time is struct
;; (make-time hour minute seconds)
(define-struct time (hour minute seconds))

;; (define a-time (make-time 13 23 20))
;; time-template : a-time -> ???
;;(define (time-template a-time)
;;  ... (time-hour a-time) ...
;;  ... (time-minute a-time) ...
;;  ... (time-seconds a-time) ...
;;  )

;; example
;; (time->seconds (make-time 12 30 2))
;; result is 45002

(define (time->seconds a-time)
  (+ (* (time-hour a-time) 60 60) (* (time-minute a-time) 60) (time-seconds a-time)))

(define t (make-time 12 30 2))
(time->seconds t)
  