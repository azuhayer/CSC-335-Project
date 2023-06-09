; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ----- ABSTRACT -----
; A set is a data type that basically represents a collection of unique elements. 
; In the context of graphs, a set data type could be useful for many graph calculations/information such as 
; finding a set of vertices or a set of edges. And because sets are able to store information about graphs 
; they could be used in different graph implementations such as Adjacency List or Adjacency Matrix. 

; By utilizing the set data type in graphs, it would allow for graph algorithms to process and 
; manage graph information, which would allow for various set operations for graphs. 

; Set operations such as finding the union of two sets or finding the intersection of two sets 
; are examples of what we can do with sets. 


; ----- CODE ----- 
; In this implementation we will use the function 'empty-set' to create an an empty set using '().

(define (empty-set)
  '())

; The function 'set-empty?' will check to see if any set is empty or not.

(define (set-empty? set)
  (null? set))

; The function 'set-member?' takes two parameters, a set and an element, and checks to see if a 
; specific element is within a given set.

(define (set-member? set element)
  (cond ((set-empty? set) #f)
        ((equal? (car set) element) #t)
        (else (set-member? (cdr set) element))))

; The function 'set-add' takes two parameters, a set and an element, and combines the element 
; into the set. 

(define (set-add set element)
  (if (set-member? set element)
      set
      (cons element set)))

; The function 'set-remove' takes two parameters, a set and an element, and removes the element 
; from the set by recursively traversing the set. 

(define (set-remove set element)
  (if (set-empty? set)
      set
      (if (equal? (car set) element)
          (cdr set)
          (cons (car set) (set-remove (cdr set) element)))))

; The function 'set-union' takes two parameters, both of which are sets, and will return the 
; union of both sets. This function computes the union by recursively adding each element of
; first to the second set by using the 'set-add' function. 

(define (set-union set1 set2)
  (cond ((set-empty? set1) set2)
        ((set-member? set2 (car set1))
         (set-union (cdr set1) set2))
        (else (set-union (cdr set1) (set-add set2 (car set1))))))

; The function 'set-interaction' takes two parameters, both of which are sets, and will return 
; the intersection of both sets. This function computes the intersection by recursively checking 
; if each element of the first set is present within the second set. 

(define (set-intersection set1 set2)
  (cond ((set-empty? set1) '())
        ((set-member? set2 (car set1))
         (cons (car set1) (set-intersection (cdr set1) set2)))
        (else (set-intersection (cdr set1) set2))))

