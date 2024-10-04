(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle time)
  (display time) (display ": ") (display angle) (newline)
    (if (not (> (abs angle) 0.1))
        angle
        (p (sine (/ angle 3.0) (+ time 1)))))


(display (sine 1000 1))
(newline)

;; when angle is multiplied by 10, steps increase by 2
