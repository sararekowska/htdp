;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.3_e27) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define cost-per-performance 180)
(define average-attendance 120)
(define standard-ticket-price 5.0)
(define average-attendance-change 15)
(define change-in-ticket-price 0.1)
(define cost-per-attendee 0.04)

(define (attendees ticket-price)
  (- average-attendance (* (- ticket-price standard-ticket-price) (/ average-attendance-change change-in-ticket-price))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ cost-per-performance (* cost-per-attendee (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))
