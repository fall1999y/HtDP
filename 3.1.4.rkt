;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 3.1.4) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; attendees : number ->number
;;
(define (attendees ticket-price)
  (+ 120 (* (/ 15 0.1) (- 5 ticket-price) )))
(attendees 3)
(attendees 4)
(attendees 5)

;; cost : number ->number
;;
(define (cost ticket-price)
  (* 1.5 (attendees ticket-price)))

(cost 3)
(cost 4)
(cost 5)
;; revenue : number ->number
;;
(define (revenue ticket-price)
  (* (attendees ticket-price) ticket-price))
(revenue 3)
(revenue 4)
(revenue 5)

;; profit : number ->number
;;
(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price))
)

(profit 3)
(profit 4)
(profit 5)

(define newfi 3.14159)