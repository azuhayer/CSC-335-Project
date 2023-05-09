; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi and Anova Sarkar (Section M)
; LastName1LastName2-project.scm - main folder for everything
; Name folder: graph-package (submit as a .zip file)
; another folder inside graph-package: basic-data-types (folder will contain stack.scm, queue.scm, set.scm, table.scm)
; queue and stack need proofs that they work
; graph-package-documentation: 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; GOAL: Design and implement an Adjacency list representation of graphs and an 
; Adjacency matrix representation of graphs using adbstract data types. 

; DEFINITION OF GRAPH: A Graph 'G' is a non-linear data structure composed of a set of 'vertices' (V)
; and a set of 'edges' (E). The Graph G is denoted as G(V, E), V being the number of vertices and 
; E being the number of Edges.  

; This information suggests that we may also need data types for sets, vertices (V) and edges (E)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ======================================================================================================== ;
; PART 2.1 - Perhaps introducing yet another data structure, design and implement an adjacency list        ;
; representation of graphs. Show that the abstract algorithms you designed in Part 1.2 work for your       ;
; representation.                                                                                          ;
; ======================================================================================================== ;
; ----- ANSWER STARTS HERE -----

; We know that an Adjacency List Representation of a graph data structure is a way of representing a graph 
; by associating each vertex of the graph with a list of its neighboring vertices. 

; EXAMPLE: Consider a very basic undirected graph G, with vertices A, B, C and D

; A --- B
; |     |
; C --- D

; So, an adjacency list representation for this graph would be: 
; |A| -> |B| -> |C| , because B and C are neighbors to A
; |B| -> |A| -> |D| , because A and D are neighbors to B
; |C| -> |A| -> |D| , because A and D are neighbors to C
; |D| -> |C| -> |B| , because C and B are neighbors to D

; The basic idea of the adjacency list representation is to store the neighbors of each vertex of the 
; graph in a list or any other appropriate data type. 

(define (make-graph)
    '())

(define (add-vertex graph vertex)
    (cons (cons vertex '()) graph))

(define (test a b)
    (+ a b))





; ----- ANSWER ENDS HERE -----
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ======================================================================================================== ;
; PART 2.2 - Perhaps introducing yet another data structure, design and implement an adjacency matrix      ;
; representation of graphs. Show that the abstract algorithms you designed in Part 1.2 work for this       ;
; representation as well.                                                                                  ;
; ======================================================================================================== ;
; ----- ANSWER STARTS HERE -----





; ----- ANSWER ENDS HERE -----
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
