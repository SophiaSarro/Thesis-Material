
One way to print a PDF:

(1) `cat` all the files together in order

    cat hdr.txt  Introduction.md People.md Dionysius_Chapter.md Verbal_Adjective_Chapter.md Topic_Modeling_Chapter.md Conclusion.md > composite.md


(2) use `pandoc` to make a pdf


    pandoc composite.md  --latex-engine=xelatex  -o composite.pdf