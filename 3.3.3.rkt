;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 3.3.3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))

;; area-of-ring : number -> number
;;
(define (area-of-ring radius)
  (* pi (expt radius 2)))

;; area-circle : radius -> number
(define (area-circle radius)
  (* radius 2 pi))

;; area-cylinder : radius, height -> number
;;
(define (area-cylinder radius height)
  (+ (* 2 (area-of-ring radius)) (* (area-circle radius) height)))

(area-cylinder 2 3)
(area-cylinder 3 4)
  