
; curried top function. This takes a x (the angle) and returns another function that is in terms of k only.
(define (top x) (lambda (k) (if (= k 1) x (* -1 (square x)))))

(define (square x) (* x x))

(define (bottom x) (- (* 2 x) 1))

; as in 1.38, import the two procedures

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

; now call the two procedures

(define (tan-cf x k)
	(cont-frac-iter (top x) bottom k))

; returns -1.3738..., which is correct
(tan-cf 2.2 999)

; returns 0, which is correct
(tan-cf 0 999)

; returns 2.5721, which is correct
(tan-cf 1.2 999)