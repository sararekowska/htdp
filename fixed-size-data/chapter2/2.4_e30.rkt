;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.4_e30) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define STANDARDTICKETPRICE 5)
(define AVERAGEATTENDANCE 120)
(define CHANGEINTICKETPRICE .10)
(define CHANGEINAVERAGEATTENDANCE 15)
(define FIXEDCOSTPERPERFORMANCE 180)
(define VARIABLECOSTPERATTENDEE .04)
(define PRICESENSITIVITY
  (/ CHANGEINAVERAGEATTENDANCE CHANGEINTICKETPRICE))
  

(define (attendees ticket-price)
  (- AVERAGEATTENDANCE (* (- ticket-price STANDARDTICKETPRICE) PRICESENSITIVITY)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ FIXEDCOSTPERPERFORMANCE (* VARIABLECOSTPERATTENDEE (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(profit 3)