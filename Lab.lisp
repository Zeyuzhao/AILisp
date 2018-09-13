; Zach Zhao
; Lab 1


(defun rect-area(a b)
  (* a b)
)

(defun rev-two(l)
  (append (cdr l) (cons (car l) nil))
)

(defun rev-all(l)
  (cond 
   ((null (cdr l)) l)
   (t (append (rev-all (cdr l)) (cons (car l) nil)))
   )
)

(defun len(list)
  (cond 
   ((null list) 0)
   (t (+ (len (cdr list)) 1))
   )
)

(defun dottedp(list)
  (listp (cdr list))
)
