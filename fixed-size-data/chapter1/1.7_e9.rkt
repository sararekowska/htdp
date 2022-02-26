;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1.7_predicates) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; rational? integer? real? complex?
; exact? inexact?

(define in 0)

(cond [(and (number? in) (negative? in)) (+ (* in -2) in)]
      [(string? in) (string-length in)]
      [(image? in) (* (image-width in) (image-height in))]
      [(and (number? in) (> in 0)) in]
      [(and (boolean? in) in) 10]
      [(and (boolean? in) (false? in)) 20]
      [else "incorrect value"])