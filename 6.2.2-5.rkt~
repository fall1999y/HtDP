;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.2.2-5) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define width 50)
(define height 160)
(define bulb-radius 20)
(define bulb-distance 10)

(define x-bulbs (quotient width 2))
(define y-red (+ bulb-distance bulb-radius))
(define y-yellow (+ y-red bulb-distance (* 2 bulb-radius)))
(define y-green (+ y-yellow bulb-distance (* 2 bulb-radius)))

(start width height)
(draw-solid-disk (make-posn x-bulbs y-red) bulb-radius 'red)
(draw-circle (make-posn x-bulbs y-yellow) bulb-radius 'yellow)
(draw-circle (make-posn x-bulbs y-green) bulb-radius 'green)

;; clear-bulb : 'symbol -> boolean
;; 'symbol is (or 'green 'yellow 'red)
(define (clear-bulb s)
  (cond
    [(symbol=? s 'red) (and (clear-solid-disk (make-posn x-bulbs y-red) bulb-radius) (draw-circle (make-posn x-bulbs y-red) bulb-radius 'red))]
    [(symbol=? s 'yellow) (and (clear-solid-disk (make-posn x-bulbs y-yellow) bulb-radius) (draw-circle (make-posn x-bulbs y-yellow) bulb-radius 'yellow))]
    [(symbol=? s 'green) (and (clear-solid-disk (make-posn x-bulbs y-green) bulb-radius) (draw-circle (make-posn x-bulbs y-green) bulb-radius 'green))]
   )
)

(clear-bulb 'red)

;; draw-bulb : 'symbol -> boolean
;;
(define (draw-bulb s)
  (cond
    [(symbol=? s 'red) (and (clear-bulb 'yellow) (clear-bulb 'green) (draw-solid-disk (make-posn x-bulbs y-red) bulb-radius 'red))]
    [(symbol=? s 'yellow) (and (clear-bulb 'red) (clear-bulb 'green) (draw-solid-disk (make-posn x-bulbs y-yellow) bulb-radius 'yellow))]
    [(symbol=? s 'green) (and (clear-bulb 'yellow) (clear-bulb 'red) (draw-solid-disk (make-posn x-bulbs y-green) bulb-radius 'green))]
   )
 )

(draw-bulb 'red)
(draw-bulb 'yellow)
(draw-bulb 'green)

;; switch : 'symbol 'symbol -> boolean
(define (switch s1 s2)
  (and (clear-bulb s1) (draw-bulb s2)))

(switch 'green 'red)
(switch 'red 'yellow)
(switch 'yellow 'green)

(draw-bulb 'red)

;; next : 'symbol -> 'symbol
;;
(define (next s)
  (cond
  [(and (symbol=? s 'red) (switch 'red 'green)) 'green]
  [(and (symbol=? s 'yellow) (switch 'yellow 'red)) 'red]
  [(and (symbol=? s 'green) (switch 'green 'yellow)) 'yellow]
  ))

(next (next (next (next 'red))))