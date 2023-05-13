; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi and Anova Sarkar (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ----- ABSTRACT -----
; A set is a data type that basically represents a collection of unique elements. 
; In the context of graphs, a set data type could be useful for many graph calculations/information such as 
; finding a set of vertices or a set of edges. And because sets are able to store information about graphs 
; they could be used in different graph implementations such as Adjacency List or Adjacency Matrix. 

; By utilizing the set data type in graphs, it would allow for graph algorithms to process and 
; manage graph information, which would allow for various set operations for graphs. 


; ----- CODE -----
; In this implementation, we will represent a set as a list where each element appears only once. 
; The 'make-set' function will create an empty list by using '().

(define (make-set)
    '())

; 