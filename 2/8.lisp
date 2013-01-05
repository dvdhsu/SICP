(define (sub-interval a b) (
	make-interval (- (lower-bound a) (upper-bound b)) 
				  (- (upper-bound a) (lower-bound b))))

; this always works, even when a and b are negative numbers. 

