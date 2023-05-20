; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Load queue.scm and graph.scm from basic-data-types folder
; This is necessary since BFS will require the queue data type and the graph implementations
(load "basic-data-types/queue.scm")
(load "basic-data-types/graph.scm")

; ----- ABSTRACT -----
; BFS, or Breadth-First Search, is an algorithm used to traverse or explore a graph in a systematic way. 
; It is particularly useful for graph-related problems where one would want to visit all the vertices of the 
; graph or find the shortest path between two vertices.