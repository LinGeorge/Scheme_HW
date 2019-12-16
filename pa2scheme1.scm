(define (print . args)
  (cond ((not (null? args))
         (display (car args))
         (apply print (cdr args)))))

(define (inv_list lst)
  (cond ((not (null? lst))
    (if (list? lst)
      (append (inv_list (cdr lst)) (list (car lst)))
      ; else
      (list lst)))
  (else '())))

(define (palindrome list1)
  (append list1 (inv_list list1))
)

(palindrome '(1 2 3))