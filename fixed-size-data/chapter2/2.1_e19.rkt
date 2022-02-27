;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.1_e19) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (string-insert str i)
  (cond [(and (string=? str "") (= i 0)) "_"]
        [(and (string=? str "") (> i 0)) "string is empty, i cant be bigger than 0"]
        [(and (>= (string-length str) 1) (< i (string-length str)))
              (string-append (substring str 0 i) "_" (substring str i (string-length str)))]
        [else "index bigger than string length"]))