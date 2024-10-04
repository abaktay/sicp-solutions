(define (square x) (* x x))

(define (sqrt-iter guess x)
    (if (good-enough? guess (improve guess x))
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))


(define (good-enough? prev_guess guess)
    (< (abs (/ (- guess prev_guess) guess)) 0.000000000001))

(define (sqrt x)
    (sqrt-iter 1.0 x))


(define phi (/ (+ 1 (sqrt 5)) 2))

(define psi (/ (- 1 (sqrt 5)) 2))

(display phi)

(newline)
