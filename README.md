# LesMiserables

This GitHub repository provides a small model describing from [Les Miserables](http://users.csc.calpoly.edu/~dekhtyar/466-Fall2010/labs/lab7/lesmisDir.csv). 

This dataset is used as a showcase by [Roassal](https://github.com/ObjectProfile/Roassal3)

It can be loaded using:

```Smalltalk
Metacello new
    baseline: 'LesMiserables';
    repository: 'github://bergel/LesMiserables';
    load.
```  

You can then access it:

```Smalltalk
m := LMModel new create.
m characters size. "=> 77"
(m characters detect: [ :c | c name = 'Cosette' ]) numberOfCoappearances. "=>22"
```
