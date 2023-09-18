# Week 1
## Assignment 1 : Number Representation

### 1. Convert to Hexadecimal and Binary

a. $0.625_{10}$

b. $123.17_{10}$

### 2. Convert to Hexadecimal and Decimal 

a. $1100001_2$

b. $110101101.10101_2$

### 3. Convert to Decimal to Binary

a. 0x26AE

b. 0xBC10E1

### 4. Add the following numbers in binary using 2’s complement to represent negative numbers. Use a word length of 6 bits (including sign).

a. $21+11$

b. $(-25+18)$

c. $(-12)+13$

d. $(-11)+(-21)$

Repeat, using 1’s complement to represent negative numbers

## Promblem 2 : Prove using Boolean Algebra

a. $𝐴+𝐵+(𝐴+𝐵)𝐶=𝐴+𝐵$
****
b. $𝐵'(𝐴+𝐵+𝐶)=𝐵'(𝐴+𝐶)$

c. $(𝐴'+𝐵'+𝐶').(𝐵'+𝐶)(𝐴+𝐵')=𝐵'$

## Problem 3 :  Simplify the following functions using Karnaugh Maps, draw the circuit.

a. $F(W,X,Y,Z)=\sum m(0,2,3,8,9,10,11,12,13,14,15)$

b. $F(W,X,Y,Z)=\sum m(3,9,11,12,13,14,15) + \sum d(1,4,6)$

c. $F(A,B,C,D)=AC'D'+A'C+ABC+AB'C+A'C'D'$

d. $F(A,B,C,D)=A'B'C'D+CD+AC'D$

## Problem 4 : Design Sequential Circuit

1. Design the circuit for FSM using JK Flip-Flop.

| Current State (S) | X=0 | X=1 | Output Z |
| ----------------- | --- | --- | -------- |
| A                 | F   | B   | 0        |
| B                 | A   | B   | 1        |
| C                 | A   | B   | 1        |
| D                 | F   | B   | 0        |
| E                 | D   | B   | 1        |
| F                 | D   | B   | 0        |


## Problem 5 : Design a modulo 5 counter that counts from 0 to 4 and wrap around. It counts when the input  X=1 (count enable) and stop counting when X=0. The output Y=1 when count=4

