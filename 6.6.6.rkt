;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.6.6) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct circle (center radius color))

;; fun-for-circle:circle->???
#|
(define (fun-for-circle a-circle)
  ... (circle-center a-circle) ...
  ... (circle-radius a-circle) ...
  ... (circle-color a-circle) ...
  )
|#

(start 300 300)
  
;; (draw-circle (make-posn 100 150) 20 'red)



(define arg (make-circle (make-posn 100 150) 20 'red))


(define (draw-a-circle a-circle)
  (draw-circle (circle-center a-circle) (circle-radius a-circle) (circle-color a-circle))
 )

(draw-a-circle arg)

(define (clear-a-circle a-circle)
  (clear-circle (circle-center a-circle) (circle-radius a-circle)))

(define (draw-and-clear-circle a-circle)
  (and 
    (draw-circle (circle-center a-circle) (circle-radius a-circle) (circle-color a-circle)) (sleep-for-a-while 1/2) (clear-a-circle a-circle)
    )
  )

;;(define (translate-circle acircle delta)
;;  (draw-circle (make-posn (+ (posn-x (circle-center acircle)) delta) (posn-y (circle-center acircle))) (circle-radius acircle) (circle-color acircle)))
(define (translate-circle acircle delta)
  (make-circle (make-posn (+ (posn-x (circle-center acircle)) delta) (posn-y (circle-center acircle))) (circle-radius acircle) (circle-color acircle)))

;;(clear-a-circle (make-circle (make-posn 100 150) 20 'red))



;; move-circle : number circle -> circle
(define (move-circle delta a-circle)
  (cond
    [(draw-and-clear-circle a-circle) (translate-circle a-circle delta)]
    [else a-circle]
    )
  )
  

(draw-a-circle (move-circle 10 (move-circle 10 (move-circle 10 (move-circle 10 arg)))))
            