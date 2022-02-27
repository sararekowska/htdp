;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.1_e21) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;1:
;
(define (ff a) (* 10 a))
(ff (ff 1))
;
;(define (ff a) (* 10 a))
;(ff (* 10 1))
;
;(define (ff a) (* 10 a))
;(ff 10)
;
;(define (ff a) (* 10 a))
;(* 10 10)
;
;(define (ff a) (* 10 a))
;100
;
;2:
;
;(define (ff a) (* 10 a))
;(+ (ff 1) (ff 1))
;
;(define (ff a) (* 10 a))
;(+ (* 10 1) (ff 1))
;
;(define (ff a) (* 10 a))
;(+ 10 (ff 1))
;
;(define (ff a) (* 10 a))
;(+ 10 (* 10 1))
;
;(define (ff a) (* 10 a))
;(+ 10 10)
;
;(define (ff a) (* 10 a))
;20