;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.1.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; attendees : ticket-price : customer-count
;;
(define (attendees ticket-price)
  (+ 120 (* 10 (- 5 ticket-price) 15)))
(attendees 3)
(attendees 4)
(attendees 5)

;; cost : ticket-price
;;
(define (cost ticket-price)
  (+ 180 (* 0.04 (attendees ticket-price))))

(cost 3)
(cost 4)
(cost 5)

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(revenue 3)
(revenue 4)
(revenue 5)

(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

(profit 3)
(profit 4)
(profit 5)