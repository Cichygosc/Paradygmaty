(define inc (lambda (number) (+ number 1)))

(define dec (lambda (number) (- number 1)))

(define pi (* 4 (atan 1.0)))

(define degToRad (lambda (degree) (* degree (/ pi 180))))

(define distance (lambda (v t) (* v t)))

(define timeToCrash (lambda (v) (/ (* 2 v) 9.8)))

(define flyDistance (lambda (v theta)

		(distance 
			(* v (cos (degToRad theta)))
			(timeToCrash (* v (sin (degToRad theta))))
			)

		))

(mymap (lambda (x) (+ 1 x)) '(0 2 4 6 8))
(mymap car '((1 2 3) (4 5 6) (7 8 9)))