; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Load set.scm from basic-data-types folder
; This is necessary since our graph implementations will require the set data type
(load "basic-data-types/set.scm")

; ----- ABSTRACT -----
; A graph in computer programming represents a collection of interconnected nodes or commonly known as
; vertices, along with edges that connect these vertices together. 

; There are different types of graph data structures, some of which include: directed graphs
; (where edges have a specific direction), undirected graphs (where edges have no direction), and lastly
; weighted graphs (where edges have 'weights' or assigned values to them). 

; Along with these different graph data structures, there are also various ways to implement a graph 
; data type. Two such implementations are: the adjacency list representation, and the adjacency matrix 
; representation.  

;  We will be implementing both representations here. 


; --------------------------------------------------------------------------------------- ;
;                           Adjacency List Representation:                                ;
; --------------------------------------------------------------------------------------- ;

; An adjacency list representation is one of the two common ways to represent a graph 
; data structure. In this representation, each vertex of the graph is associated with a 
; list of its neighboring vertices. This list of neighbors is called the adjacency list. 

; For an undirected graph (we will be implementing for this), the adjacency list will 
; have all the vertices that share an edge with a specific vertex. 

(define (empty-graph)
  '())

(define (graph-empty? graph)
  (null? graph))

(define (add-vertex graph vertex)
  (cons (list vertex '()) graph))

(define (add-edge graph vertex1 vertex2)
  (let* ((adjacency-list1 (find-vertex graph vertex1))
         (updated-list1 (set-add (cdr adjacency-list1) vertex2))
         (adjacency-list2 (find-vertex graph vertex2))
         (updated-list2 (set-add (cdr adjacency-list2) vertex1))
         (updated-graph (cons (list vertex1 updated-list1) (remove-vertex graph vertex1))))
    (cons (list vertex2 updated-list2) updated-graph)))

(define (remove-vertex graph vertex)
  (cond ((null? graph) '())
        ((equal? (caar graph) vertex) (remove-vertex (cdr graph) vertex))
        (else (cons (car graph) (remove-vertex (cdr graph) vertex)))))

(define (remove-edge graph vertex1 vertex2)
  (let* ((adjacency-list1 (find-vertex graph vertex1))
         (updated-list1 (set-remove (cdr adjacency-list1) vertex2))
         (adjacency-list2 (find-vertex graph vertex2))
         (updated-list2 (set-remove (cdr adjacency-list2) vertex1))
         (updated-graph (cons (list vertex1 updated-list1) (remove-vertex graph vertex1))))
    (cons (list vertex2 updated-list2) updated-graph)))

(define (find-vertex graph vertex)
  (cond ((null? graph) #f)
        ((equal? (caar graph) vertex) (car graph))
        (else (find-vertex (cdr graph) vertex))))

(define (get-neighbors graph vertex)
  (let ((adjacency-list (find-vertex graph vertex)))
    (if adjacency-list
        (cdr adjacency-list)
        '())))

(define (get-vertices graph)
  (map car graph))

(define (graph-size graph)
  (length graph))

(define (custom-filter pred lst)
  (cond ((null? lst) '())
        ((pred (car lst)) (cons (car lst) (custom-filter pred (cdr lst))))
        (else (custom-filter pred (cdr lst)))))

(define filter custom-filter)

;; Test Code
(define graph0 (empty-graph))
(define graph1 (add-vertex graph0 'A))
(define graph2 (add-vertex graph1 'B))
(define graph3 (add-vertex graph2 'C))

(define graph4 (add-edge graph3 'A 'B))
(define graph5 (add-edge graph4 'A 'C))

(define graph6 (get-vertices graph5))







; --------------------------------------------------------------------------------------- ;
;                           Adjacency Matrix Representation:                              ;
; --------------------------------------------------------------------------------------- ;

; An adjacency matrix representation is the second common way to represent a graph data
; structure. It is a way of representing a graph using a matrix of any size n x n, where 
; n is the number of vertices of the graph. 

; In the adjacency matrix representation, each cell of the matrix represents an edge 
; between two vertices. The value stored in the cell indicates whether an edge exists
; or not. Usually a value of '1' will indicate that there exists such an edge and a value 
; of '0' if there isnt an edge. 

; For an udirected graph, the adjacency matrix would be symmetric since the presence or 
; absence of an edge between, lets say, vertex A and vertex B is the same 
; between vertex B and vertex A. 