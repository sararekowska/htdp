;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.1_e20) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (string-delete str i)
  (cond [(string=? str "") "string is empty, nothing to delete"]
        [(>= (string-length str) i) (string-append (substring str 0 i) (substring str (+ i 1) (string-length str)))]
        [else "index is bigger than string length"]))
