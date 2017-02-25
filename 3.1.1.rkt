;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.1.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; ticket-price = 5 : customer = 120
;; price-down = 1.5 : customer-add = 15
;; static-cost = 180, customer-cost = 0.04

;; attendees : ticket-price : customer-count
;;
(define (attendees ticket-price)
  (+ 120 (* 10 (- 5 ticket-price) 15)))

(attendees 3)
(attendees 4)
(attendees 5)
(attendees 6)
