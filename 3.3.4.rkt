;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 3.3.4) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; area-pipe-one-def : inner-radius thickness height -> number
;;
(define (area-pipe-one-def inner-radius thickness height)
  (- (+ (+ (* 2 (expt (+ inner-radius thickness) 2) pi) (* height (* pi (+ inner-radius thickness) 2))) (* height (* 2 inner-radius pi))) (* 2 (* inner-radius inner-radius pi))))

(area-pipe-one-def 2 4 3)

;; area-pipe : inner-radius thickness height -> number
(define (area-pipe inner-radius thickness height)
  (- (+ (* 2 (area-of-ring (+ inner-radius thickness))) (area-cylinder (+ inner-radius thickness) height) (area-cylinder inner-radius height)) (* 2 (area-of-ring inner-radius)))
  )

;; area-of-ring : radius -> number
(define (area-of-ring radius)
  (* radius radius pi))

;; area-cylinder : radius height -> number
(define (area-cylinder radius height)
  (* height (* 2 radius pi)))

(area-pipe 2 4 3)
