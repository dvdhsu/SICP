; this implmentation isn't elegant either; it still abuses list casting and append
; in order to return a list

(define (same-parity head . ls)
	(define (same-parity-iter ls built)
		(cond	((null? ls) built)
				((= (remainder (- (car ls) head) 2) 0) (same-parity-iter (cdr ls) (append built (list (car ls)))))
				(else (same-parity-iter (cdr ls) built))))
	(same-parity-iter ls (list head)))