(define mymap (lambda (fun lista)
		(
			if (null? lista) ()
			(append (list (fun (car lista))) (mymap fun (cdr lista)))
		)
	))