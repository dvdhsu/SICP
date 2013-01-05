; this implementation works, but isn't elegant
; it relies on append to make sure the output is a list
; if the inputs to append are lists, it outputs lists
; I'm having trouble outputting lists without it. 

(define (my-reverse ls)
	(if (= (length ls) 1)
		(list (car ls))
		(append (my-reverse (cdr ls)) (list (car ls))))))

