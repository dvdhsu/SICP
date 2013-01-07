; list 1

(cdr (car (cdr (cdr (list 1 3 (list 5 7) 9)))))

; correct

; list 2

(car (car (list (list 7))))

; correct

; list 3

(car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7))))))))))))))))))

; correct 