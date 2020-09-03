# The PEDAC Process

## P: Understanding the Problem

- Establish the rules/ define the boundaries of the problem
  - Asses available information
  - Restate Explicit requirements
  - Identify Implicit requirements
- Spend enough time. Dont rush this step.

**Gengeral Example**

Given a string, produce a new string with every other word removed. 

- Explicit requirements:
  - Input: string
  - Output: new string
  - Remove every other word from input string 

- Questions:
  - What do we mean by every other word?
  - How do we define   a word in this context?
    - Wordsare delimited by spaces

## E: Examples and Test Cases

- Can confirm/refute assumptions
- Help to answer questions about implicit requirements
- Act as assertions which help to codify the rules and boundaries 

## D: Data Structures

- Help to reason with data logically
- Help interact with data at implementation level
- Thinking in terms of data structures is part of problem solving process
- Data structures closely links to algorithm
  - Set of steps from input to output
    - Involves structuring data in a certain way

## A: Algorithms

- A logical sequence of steps for accomplishing a task or objective 
  - Closely linked to data structures
  - Series of steps to structure data to produce the required output
_ Stay abstract/ high-level 
  - Avoid implementation detail
  - Dont worry about efficiency for now


## C: Implementing a solution Code

- Translating solution algorithm to code
- Think about algorithm in context of programming language
  - Characteristics of data structures
  - Built-in functions/metods
  - Suntax and coding patterns
- Create test Cases
- Code with intent



# Sum Even Number Rows

Imagine a sequence of consecutive even integers beginning with 2. The integersare grouped in rows, with the first row containing one integer, the second row two integers, the third row three integers, and so on. 
Given an integer representing thenumberof a particular row, return an integer representing the sum of all the integers in that row. 

**Rules and Requirements** 

- Sequence of even integers
- Sequence begins with two 
- Integers are consecutive 
- Sequence is grouped into rows
- Each row is incrementally larger: 1, 2, 3, ...
- Row 'number' equals the number of elements in the row
  - Row 1 has 1 element, row 2 has 2 elements, ...
- Input : a single integer
  - Identifies a 'row', which isa subset of a sequence of integers
- Output: a single integer
  - The sum of integers in the row identied by the input integer

- Sequence:
2, 4, 6, 8, 10, 12, 14, 16, 18, ...

2
4, 6
8, 10, 12
14, 16, 18, 20
....

- How do we create the structure?

**Examples**

row number: 1 - - > sum of integers in row: 2
row number: 2 - - > sum of integers in row: 10
row number: 4 - - > sum of integers in row: 68

2 - - > 2
4,6 - - > 10
14, 16, 18, 20 - - > 68

**Data Structure**

2
4, 6
8, 10, 12
14, 16, 18, 20
....

- Overall structure representing sequence as a whole
- Individual rows within overal structure
- Individual rows in a set order in context of sequence. 
- Individual rows contain integers
- Can assume that integers are in a set of order in the context of the sequence 

[
[2]
[4, 6]
[8, 10, 12]
[14,16, 18, 20]
....
]

**Algorithm** 

1. Create an empty 'rows' array to ocntain all of the rows
2. Create a 'row' array and add it to the overall 'rows' array
3. Repeat step 2 until all the necessary rows have been created
 - All the rows have been created when the length of the 'rows' array is equal to the input integer
4. Sum the final row
5. Regurn the sum 


*Problem: Creat a Row*

Rules:
- Row is an array
- Arrays contain integers
- Integers are consecutive even numbers
- Integers in each row form a part of an overall larger sequence
- Rose are of different lengths
- Input: the information needed to create the output
  - The starting integer
  - Length of the row
- Output: the row itself: `[8, 10, 12]`

Examples:
start: 2, length: 1 - - > [2]
start: 4, length: 2 - - > [4, 6]
start: 8, length: 3 - - > [8, 10, 12]

Data Structures: 
- An array of integers

Algorithm:
1. Create an empty 'row' array to contain the integers
2. Add the starting integer
3. Increment the starting integer by 2 to get the next integer in the sequence
4. Repeat steps 2 & 3 until the array has reached the correct length
5. Regurn the 'row' array 

