(define (cube-iter guess target)
	(if (is-good-enough? guess target)
	guess
	(cube-iter (improve guess target) target)))

(define (improve guess target)
	(/ (+ (/ target (square guess)) (* 2  guess)) 3))

(define (is-good-enough? guess target)
	(< (abs (- (cube guess) target)) (/ target 10000000)))

(define (cube x) (* x (square x)))

(define (cube-root x) (cube-iter 1.0 x))