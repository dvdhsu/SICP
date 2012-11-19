(define (filtered-accumulate filter combine term next null-value a  b)
	(define (filtered-accumulate-iter a accu)
		(cond ((> a b) accu)
			  ((filter (term a)) (filtered-accumulate-iter (next a) (combine accu (term a))))
			  (else (filtered-accumulate-iter (next a) accu))
		))
	(filtered-accumulate-iter a null-value))

; for example, if we want to multiply the even numbers from 1 to 50

(define (ident x) x)

(define (is-even x) (= (remainder x 2) 0))

(define (next x) (+ x 1))

(define (multiply a b) (* a b))

(filtered-accumulate is-even multiply ident next 1  48  50)

; this can be written with an anonymous function like thus 

(filtered-accumulate (lambda (x) (= (remainder x 2) 0)) multiply (lambda (x) x) (lambda (x) (+ x 1)) 1  48  50)

; how strange: (lambda (x) (x)) and (lambda x x) both throw errors, but (lambda (x) x) is the only one that works. Seems like "single" return values should have no parentheses. 
