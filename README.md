# Distance between two branches of DNA

## **Problem**
A DNA branch is a finite nucleotide sequence: adenine (A), cytosine (C), guanine (G) and thymine (T).  
It's possible to determine a degree of similarity between two branches of DNA, called distance, counting the minimum number of basic operations needed to transform one of the branches in the other. These operations are:
- Insert a nucleotide;
- Remove a nucleotide;
- Switch a nucleotide for another;  

 
Let's consider the next two branches" 'ATTGCAG' and 'CTAGG'. The distance between them is 4 because starting from 'ATTGCAG' it reaches 'CTAGG' in 4 steps:
1. CTTGCAG: replace A with C in position 1
2. CTAGCAG: replace T with A in position 3
3. CTAGAG: remove C in position 5
4. CTAGG: remove A in position 6  

and it's not possible to do this process in less steps.  
The objective of this exercise is to, given two DNA branches, calculate the distance in efficiently.

## **Input**
The input consists of two lines. Each line contains a string which defines one DNA branch (exclusively made up of the characters 'A', 'C', 'G' and 'T').  
## **Output**
The output is organized in a single line containing the iteger that is the editing distance.
## **Sample input**
ATTGCAG  
CTAGG
## **Sample output**
4
