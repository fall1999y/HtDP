;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.4.3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; <= 500 = 0.0025
;; 500 < x <= 1500 = 0.005
;; 1500 < x <= 2500 = 0.0075
;; else = 0.01

;; pay-back-500u : number -> number
(define (pay-back-500u x)
  (* 0.0025 x))

;; pay-back-500o-1500l : number -> number
(define (pay-back-500o-1500l x)
  (+ (pay-back-500u 500) (* 0.005 (- x 500))))

;; pay-back-1500o-2500l : number -> number
(define (pay-back-1500o-2500l x)
  (+ (pay-back-500o-1500l 1500) (* 0.0075 (- x 1500))))
  
;; pay-back-2500o : number -> number
;;
(define (pay-back-2500o x)
  (+ (pay-back-1500o-2500l 2500) (* 0.01 (- x 2500))))

(pay-back-1500o-2500l 2000)
(pay-back-2500o 2600)

;; pay-back : number -> number
(define (pay-back x)
  (cond [(<= x 500) (pay-back-500u x)]
        [(and (> x 500) (<= x 1500)) (pay-back-500o-1500l x)]
        [(and (> x 1500) (<= x 2500)) (pay-back-1500o-2500l x)]
        [else (pay-back-2500o x)]))

(pay-back-500u 400)
(pay-back 400)

(pay-back-500o-1500l 1400)
(pay-back 1400)

(pay-back-1500o-2500l 2000)
(pay-back 2000)

(pay-back-2500o 2600)
(pay-back 2600)
