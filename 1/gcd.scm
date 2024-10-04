(define (gcd a b count)
  (if (= b 0)
    (begin 
      (display count)
      (newline)
      a)
    (gcd b (remainder a b) (+ count 1))
    ))


(define zart (gcd 206 40 0))

(display zart)
(newline)
