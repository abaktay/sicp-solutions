(define (average x y) (/ (+ x y) 2))

(define tolerance 0.00001)
(define (fixed-point f first-guess)
(define (close-enough? v1 v2)
  (< (abs (- v1 v2))
    tolerance))
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (f guess)))
       (if (close-enough? guess next)
         next
         (try next))))
  (try first-guess))

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y))) 1.0))

;(define la (fixed-point (lambda (y) (+ (sin y) (cos y))) 1.0)) 

(define (ratio)
  (fixed-point (lambda (x) (average x (+ 1 (/ 1 x)))) 1.0))

(define (xx)
  (fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2.0 ))
;(define la (ratio))

(define (n i) i)
(define (d i) i)

(define (cont-frac n d k)
  (if (= k 0)
    0
    (/ (n 1) (+ (d 1) (cont-frac n d (- k 1))))))

(define (iter-frac n d k)
  (define (iter i result)
    (if (= i 0)
      result
      (iter (- i 1) (/ (n 1) (+ (d 1) result)))))
 (iter k 0))

; Ni are all 1, and the Di are successively 1, 2, 1, 1, 4, 1, 1,6, 1, 1, 8   (2, 5, 8)

(define (di i) 
  (if (= (modulo (+ i 2) 3) 0)
    (/ (+ i 3) 3)
    1))

(define (euler-frac n di k)
  (if (= k 0)
    0.0
    (/ (n 1) (+ (di k) (euler-frac n di (- k 1))))))


(display (euler-frac n di 500))
(newline)
