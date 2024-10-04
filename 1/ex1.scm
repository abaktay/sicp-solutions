;define a 3) %norm |r;
;define b (+ a 1))
;+ a b (* a b))
;= a b)
;if (and (> b a) (< b (* a b)))
;   b
;   a)

;cond ((= a 4) 6)
;     ((= b 4) (+ 6 7 a))
;     (else 25))

;+ 2 (if (> b a) b a))

;define res (* (cond ((> a b) a)
;        ((< a b) b)
;        (else -1))
;  (+ a 1)))
;display res)

;(define res (/ (+ 5 4 (- 2 (- 3(+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7))))
(define (square x) (* x x))
;define (sum a b c)
; (cond ((and (< a b) (< a c)) (+ (square c) (square b))) 
;      ((and (< b c) (< b a)) (+ (square a) (square c)))  
;      (else (+ (square b) (square a)))))                 

;define res (sum 4 6 2))


;display res)

;define (a-plus-abs-b a b)
;   ((if (> b 0) + -) a b))

;define res (a-plus-abs-b 3 -5))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))


(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(define res (sqrt 12))

(display res)
(newline)
