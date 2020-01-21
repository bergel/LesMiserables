# LesMiserables

This GitHub repository provides a small model describing from [Les Miserables](http://konect.uni-koblenz.de/networks/moreno_lesmis).

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
