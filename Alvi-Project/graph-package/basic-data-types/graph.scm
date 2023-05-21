; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Load set.scm and table.scm from basic-data-types folder
; This is necessary since our graph implementations will require the set data type and table data type
(load "../basic-data-types/set.scm")
(load "../basic-data-types/table.scm")

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

; ----- CODE -----
; The empty-graph function is a simple function that returns an empty graph. In this 
; implementation, a graph is represented as a list of vertices and their corresponding adjacency 
; lists. An empty graph has no vertices, so the empty-graph function returns an empty list '(), 
; indicating that there are no vertices or edges in the graph.

(define (empty-graph)
  '())

; The graph-empty? function is used to check whether a given graph is empty or not. It takes 
; a graph as input and returns #t (true) if the graph is empty, and #f (false) otherwise.

(define (graph-empty? graph)
  (null? graph))

; The add-vertex function is used to add a new vertex to a graph. It takes an existing graph 
; and a vertex as inputs and returns a new graph that includes the added vertex.

(define (add-vertex graph vertex)
  (cons (list vertex '()) graph))

; The add-edge function is used to add an edge between two vertices in a graph. It takes an 
; existing graph, along with the two vertices that the edge connects, and returns a new 
; graph with the edge added.

(define (add-edge graph vertex1 vertex2)
  (let* ((adjacency-list1 (find-vertex graph vertex1))
         (updated-list1 (set-add (cdr adjacency-list1) vertex2))
         (adjacency-list2 (find-vertex graph vertex2))
         (updated-list2 (set-add (cdr adjacency-list2) vertex1))
         (updated-graph (cons (list vertex1 updated-list1) (remove-vertex graph vertex1))))
    (cons (list vertex2 updated-list2) updated-graph)))

; The remove-vertex function is used to remove a vertex and its associated edges from a graph. 
; It takes an existing graph and a vertex as inputs and returns a new graph with the specified 
; vertex removed.

(define (remove-vertex graph vertex)
  (cond ((null? graph) '())
        ((equal? (caar graph) vertex) (remove-vertex (cdr graph) vertex))
        (else (cons (car graph) (remove-vertex (cdr graph) vertex)))))

; The remove-edge function is used to remove an edge between two vertices in a graph. It takes an 
; existing graph, along with the two vertices that the edge connects, and returns a new graph 
; with the edge removed.

(define (remove-edge graph vertex1 vertex2)
  (let* ((adjacency-list1 (find-vertex graph vertex1))
         (updated-list1 (set-remove (cdr adjacency-list1) vertex2))
         (adjacency-list2 (find-vertex graph vertex2))
         (updated-list2 (set-remove (cdr adjacency-list2) vertex1))
         (updated-graph (cons (list vertex1 updated-list1) (remove-vertex graph vertex1))))
    (cons (list vertex2 updated-list2) updated-graph)))

; The find-vertex function is used to search for a specific vertex in a graph. It takes an existing 
; graph and a vertex as inputs and returns the adjacency list associated with that vertex if found, 
; or #f (false) if the vertex is not present in the graph.

(define (find-vertex graph vertex)
  (cond ((null? graph) #f)
        ((equal? (caar graph) vertex) (car graph))
        (else (find-vertex (cdr graph) vertex))))

; The get-neighbors function is used to retrieve the neighbors (vertices connected by an edge) of a 
; given vertex in a graph. It takes an existing graph and a vertex as inputs and returns a list 
; of neighbors for that vertex.

(define (get-neighbors graph vertex)
  (let ((adjacency-list (find-vertex graph vertex)))
    (if adjacency-list
        (cdr adjacency-list)
        '())))

; The get-vertices function is used to retrieve all the vertices present in a graph. It takes an 
; existing graph as input and returns a list of all the vertices.

(define (get-vertices graph)
  (map car graph))

; The graph-size function is used to determine the number of vertices in a graph. It takes an existing 
; graph as input and returns the count of vertices in the graph.

(define (graph-size graph)
  (length graph))

; The custom-filter function takes a predicate pred and a list lst as input and returns a new list 
; that contains only the elements of lst for which pred returns true.

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

