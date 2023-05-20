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

(define (make-graph)
  (let ((adjacency-list (empty-set)))

;; Function to add an edge between two vertices
(define (add-edge vertex1 vertex2)
    (let ((vertex1-entry (set-member? adjacency-list vertex1))
        (vertex2-entry (set-member? adjacency-list vertex2)))
    (if (and vertex1-entry vertex2-entry)
        (let* ((neighbors1 (cdr vertex1-entry))
                (neighbors2 (cdr vertex2-entry)))
            (set-union (set-remove adjacency-list vertex1-entry)
                        (set-remove adjacency-list vertex2-entry)
                        (set-add adjacency-list (cons vertex1 (set-add neighbors1 vertex2))))
            (set-add adjacency-list (cons vertex2 (set-add neighbors2 vertex1)))))
        adjacency-list))
    
;; Function to add a vertex to the graph
(define (add-vertex vertex)
    (if (set-member? adjacency-list vertex)
        adjacency-list
        (set-add adjacency-list (cons vertex (empty-set)))))

;; Function to get the neighbors of a vertex
(define (neighbors vertex)
    (let ((vertex-entry (set-member? adjacency-list vertex)))
    (if vertex-entry (cdr vertex-entry) (empty-set))))

;; Function to get all vertices in the graph
(define (get-vertices)
    (map car adjacency-list))

;; Function to get all edges in the graph
(define (get-edges)
  (letrec ((helper (lambda (graph edges)
                     (if (set-empty? graph)
                         edges
                         (let* ((vertex (caar graph))
                                (neighbors (cdar graph))
                                (vertex-edges (map (lambda (neighbor) (list vertex neighbor)) neighbors)))
                           (helper (cdr graph) (append edges vertex-edges)))))))
    (helper adjacency-list '())))








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