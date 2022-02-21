;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1.5_tree) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; negative x -> left
; negative y -> up

(require 2htdp/image)
(define TREE-SIZE 200)

(overlay/xy    (triangle (/ TREE-SIZE 2) "solid" "green")
               (/ TREE-SIZE 5) (/ TREE-SIZE 10)
               (rectangle (/ TREE-SIZE 10)(/ TREE-SIZE 2) "solid" "brown"))