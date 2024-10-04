(define (* a b)
  (if (= b 0)
    0
    (+ a (* a (- b 1)))))

(define (double n)
  (* n 2))


(define (halve n)
  (* n (/ 1 2)))


(define zort (* 3 5))


(display zort)
(newline)
