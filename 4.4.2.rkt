;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.4.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; tax : number -> number
;; n <= 240 = 0%
;; n > 240 and n <= 480 = 15%
;; else 28%

(define (tax n)
  (cond [(<= n 240) 0] [(and (> n 240) (<= n 480)) (* n 0.15)] [else (* n 0.28)]))
(tax 240)
(tax 480)
(tax 1000)

(define payforhour 12)
;; netpay : number -> number
(define (netpay h)
  (- (* payforhour h) (tax (* payforhour h))))

(netpay 240)
(netpay 480)
(netpay 1000)
(netpay 1)
(netpay 40)
