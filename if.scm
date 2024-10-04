(define (abs_ x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (abs__ x)
  (cond ((< x 0) (- x))
        (else x)))

(define (ifabs x)
  (if (< x 0) 
    (- x)
    x))

(define (>= x y) (not (< x y)))


;(define ans (ifabs -490))
;(display ans)
(newline)
