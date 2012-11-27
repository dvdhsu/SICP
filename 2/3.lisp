; to construct a rectangle, we'll just need the two diagonal corners. 

(define (make-rect c1 c2) (cons c1 c2))

(define (rect-width rectangle) (abs (- (car (car rectangle)) (car (cdr rectangle)))))

(define (rect-length rectangle) (abs (- (cdr (car rectangle)) (cdr (cdr rectangle)))))

(define (rect-area rectangle) (* (rect-width rectangle) (rect-length rectangle)))

(define (rect-peri rectangle) (* 2 (+ (rect-width rectangle) (rect-length rectangle))))

; import the previous exercise

	(define (make-segment p1 p2) (cons p1 p2))

	(define (start-segment segment) (car segment))

	(define (end-segment segment) (cdr segment))

	(define (make-point x y) (cons x y))

	(define (x-point point) (car point))

	(define (y-point point) (cdr point))

; tests

	; let's make a rectangle with diagonal points at the origin and (5, 5)

	(define origin (make-point 0 0))

	(define five-five (make-point 5 5))

	(define five-rectangle (make-rect origin five-five))

	(rect-area five-rectangle)

	(rect-peri five-rectangle)

	; let's make a rectangle with diagonal points at (1, 1) and (7, 3)

	(define one-one (make-point 1 1))

	(define seven-three (make-point 7 3))

	(define test-rectangle (make-rect one-one seven-three))

	(rect-area test-rectangle)

	(rect-peri test-rectangle)

; tests pass successfully


