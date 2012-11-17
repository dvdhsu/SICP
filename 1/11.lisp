(define (fr n)
(cond ((< n 3) n)
(else (+ (fr (- n 1)) (* 2(fr (- n 2))) (* 3(fr (- n 3)))))))


(define (fi n)
	(define (filoop a b c count)
	(cond((= count 0) (+ a b c))
		; the 1.5 certainly is not the most elegant way, but it works. Maybe I'll come back and fix this later. 
		(else (filoop (+ a b c) (* 2 a) (* 1.5 b) (- count 1)))
		))
	(cond ((< n 3) n)
		(else (filoop 2 2 0 (- n 3))))
	)

(define (filoop a b c count)
	(cond((= count 0) (+ a b c))
		; the 1.5 almost certainly is not the most elegant way, but it works. Maybe I'll come back and fix this later. 
		(else (filoop (+ a b c) (* 2 a) (* 1.5 b) (- count 1)))
		))