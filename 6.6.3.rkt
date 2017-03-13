;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.6.3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; circle is struct
;; (make-circle a-posn radius color)
;; a-posn is struct, radius is number, color symbol
(define-struct circle (center radius color))
  
;; posn is struct
;; (make-posn x y)
;; (define a-posn (make-posn 5 10))

;; fun-for-circle-template:circle->???
;;(define (fun-for-circle-template a-circle)
;;  ... (circle-a-posn a-circle) ...
;;  ... (circle-radius a-circle) ...
;;  ... (circle-color a-circle) ...
;;  )


;; posn-distance : posn posn -> number
(define (posn-distance aposn bposn)
  (sqrt (+ (sqr (- (posn-x bposn) (posn-y aposn))) (sqr (- (posn-y bposn) (posn-y aposn))))))

;; in-circle : circle posn -> boolean
(define (in-circle a-circle a-posn)  
    (< (posn-distance (circle-center a-circle) a-posn) (circle-radius a-circle))
)

;; distance is sqrt|(5-10)^2 + (8-20)^2| = 13, radius is 10
;; therefore false
(in-circle (make-circle (make-posn 10 20) 10 'red) (make-posn 5 8))

;; distance is sqrt(15-10)^2 + (22-20)^2)| = 5.38.. , radius is 10
;; therefore true
(in-circle (make-circle (make-posn 10 20) 10 'red) (make-posn 15 22))