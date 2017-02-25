;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 3.3.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))

;; volume-cylinder : radius, height -> volume
;;
(define (volume-cylinder radius height)
  (* height (area-of-ring radius)))

;; area-of-ring : number -> number
;;
(define (area-of-ring radius)
  (* pi (expt radius 2)))

(volume-cylinder 3 2)