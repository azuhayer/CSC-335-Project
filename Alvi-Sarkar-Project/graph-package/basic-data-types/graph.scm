; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi and Anova Sarkar (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
; absence of an edge between, lets say, between vertex A and vertex B is the same 
; between vertex B and vertex A. 