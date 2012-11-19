
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














