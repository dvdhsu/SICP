(define (bottom x)
	(if (= (remainder x 3) 2) (* (/ (+ x 1) 3) 2)
		1))


; code imported from exercise 37
	; recursive procedure
	(define (cont-frac-recur n d k)
		(define (cont-frac-recur-helper current)
			(if (= k current) (/ (n current) (d current))
				(/ (n current) (+ (d current) (cont-frac-recur-helper (+ current 1))))))
		(cont-frac-recur-helper 1))

	; iterative procedure
	(define (cont-frac-iter n d k)
		(define (cont-frac-iter-helper stage accu)
			(if (< stage 1) accu
				(cont-frac-iter-helper (- stage 1) (/ (n stage) (+ (d stage) accu)))))
		(cont-frac-iter-helper k 0))

; calling both functions

(cont-frac-recur (lambda (x) 1.0) bottom 999)

(cont-frac-iter (lambda (x) 1.0) bottom 999) 

; both functions return .7182818... which is indeed (- e 2)