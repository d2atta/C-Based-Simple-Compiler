# C-Based-Simple-Compiler

 It is a Minor Project of 6th Sem of KIIT. We are building a toy compiler based on c in lex and yacc.
 We took a unambiguous grammar for our parsing. Then we identified the keywords and identifiers it will require to parse the input file.
 We made the flex program and linked it with bison parser to parse the given peogram.  
 ### coolaborator:
 + Debarghya Datta - Made the bison program.
 + Nabanita Saha - Made the SRS documents.
 + Diya Gangopadhyay - Helped in structuring the grammar and made the DFD.
 + Anuradha Sarkar - Made the lex program.  

The detailed report on the project will be uploaded soon..

## using the parser

You just need to download all the files given in the repo and write your program on the 'main.cpp' file. 
And then run the Parser as: 
```c++
g++ -o parser tokens.l parser.cpp main.cpp
```
you can also make your own token.cpp by compiling your lex file:
```c++
lex -o tokens.cpp lexical.l
```
For making your parser.cpp and parser.hpp file:
```c++
bison -d -o parser.cpp parser.ya
```