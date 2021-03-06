(defun squash-list(l)
	(cond 
		((null l) nil)
		((atom l) (cons l nil))
		((atom (car l)) (cons (car l) (squash-list (cdr l))))
		(t (append (squash-list (car l)) (squash-list (cdr l))))
	)
)

(defun countNum(l)
	(cond
		((null l) 0)
		((numberp (car l)) (+ 1 (countNum l)))
		(t (countNum (cdr l)))))

(defun addNum(l)
	(cond
		((null l) 0)
		((numberp (car l)) (+ (car l) (addNum (cdr l))))
		(t (addNum (cdr l)))))

(defun average-r(l)
	(/ (addNum l) (countNum l))
)

(defun count-x-in-y (x y)
	(cond 
		((equal x (car y)) (+ 1 (count-x-in-y (x cdr y))))
		(t (count-x-in-y (x cdr y)))
))

(defun our-member-p (x y)
	(cond 
		((null y) (nil))
		((equal x (car y)) (x))
		(t (our-member-p (x cdr y)))
))

