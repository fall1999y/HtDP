;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 3.3.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define itoc 2.54)
(define ftoi 12)
(define ytof 3)
(define rtoyd 5.5)
(define ftord 40)
(define mtofl 8)
;; inchesToCm : number ->number
;;
(define (inchesToCm number)
  (* number itoc))

(inchesToCm 2)

;; feetToInches : number ->number
(define (feetToInches number)
  (* number ftoi))

(feetToInches 2)

;; yardsToFeet : number -> number
(define (yardsToFeet number)
  (* number ytof))

(yardsToFeet 2)

;; rodsToYards : number ->number
(define (rodsToYards number)
  (* number rtoyd))

(rodsToYards 2)

;; furlongsToRods : number->number
(define (furlongsToRods number)
  (* ftord number))

(furlongsToRods 2)

;; milesToFurlongs:number->number
(define (milesToFurlongs number)
  (* number mtofl))

(milesToFurlongs 2)

;; feetToCm : number -> number
(define (feetToCm number)
  (* itoc (feetToInches number)))

(feetToCm 2)

;; yardsToCm : number -> number
(define (yardsToCm number)
  (* itoc (feetToInches (yardsToFeet number))))

(yardsToCm 2)

;; rodsToInches : number -> number
(define (rodsToInches number)
  (feetToInches (yardsToFeet (rodsToYards number))))

(rodsToInches 2)

;; milesToFeet : number -> number
(define (milesToFeet number)
  (yardsToFeet (rodsToYards (furlongsToRods (milesToFurlongs number)))))

(milesToFeet 2)