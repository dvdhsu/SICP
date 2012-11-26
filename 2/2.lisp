(define (make-segment p1 p2) (cons p1 p2))

(define (start-segment segment) (car segment))

(define (end-segment segment) (cdr segment))

(define (make-point x y) (cons x y))

(define (x-point point) (car point))

(define (y-point point) (cdr point))

(define (midpoint-segment segment)
	(make-point (/ (+ (car (car segment)) (car (cdr segment))) 2)
				(/ (+ (cdr (car segment)) (cdr (cdr segment))) 2)))
(define (print-point p)
	(newline)
	(display "(")
	(display (x-point p))
	(display ",")
	(display (y-point p))
	(display ")"))

; tests

	; make a segment from (0, 0) to (5, 5)
	(define origin-to-five-five (make-segment (make-point 0 0) (make-point 5 5)))

	; should print (5/2, 5/2)
	(print-point (midpoint-segment origin-to-five-five))

	; make a segment from (1, 4) to (10, 42)

	(define one-four-to-ten-fourtwo (make-segment (make-point 1 4) (make-point 10 42)))

	; should print (11/2, 23)
	(print-point (midpoint-segment one-four-to-ten-fourtwo))

; passes both tests