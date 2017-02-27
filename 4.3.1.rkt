;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.3.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; (cond
;;  [(< n 10) 20]
;;  [(and (> n 20) (<=n 30))]     <-- error : missing result
;;  [else 1])

;; (cond [(< n 10) 20]
;;       [* 10 n]                <-- this is not a legal cond expression
;;       [else 555]);

