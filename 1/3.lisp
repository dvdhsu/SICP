(define (square b) (* b b))

(define (maxsquaresum a b c) 
	(cond ((= (max a b) (max b c)) (+ (square b) (square (max a c))))
		  ((= (max a b) (max a c)) (+ (square a) (square (max b c))))
		  ((= (max a c) (max b c)) (+ (square c) (square (max a b))))
		  ))

(define (max a b)
 (if (> a b) 
 	a
 	b))