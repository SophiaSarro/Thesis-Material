Subsections:

Intro to Topic Modeling:
Topic models are statistical models wherein frequently co-occurring words are sorted into "clusters" by a computer. These topic clusters do not have inherent meanings, as the computer does not take the definitions of the words into account; however, humans can assign meanings to the clusters once the computer is done sorting them. While topic modeling began as a purely mathematical endeavor, it has been embraced by the field of digital humanities in recent years as a new method to analyze written texts, as the topic models may display patterns that would not be noticeable otherwise.

One advantage to working with texts digitally is that research is far less [not isolated, but what??] than it used to be. I can readily provide the tools for other scholars to challenge and expand upon my findings on this front. In order to create the topic models, I used [this software by David Mimno](https://mimno.infosci.cornell.edu/jsLDA/jslda.html), with [this list of words to sort](topic-modelling-data/scholia-noacc-for-tm.tsv) and [this stopwords list](topic-modelling-data/scholia-stopwords.txt). 

Topic Modeling With All the Scholia:
I have used topic modeling to sort all of the scholia in the Venetus A manuscript in two different forms: the diplomatic edition, and the [standardized?] edition. 
When topic modeling the diplomatic edition, I have favored the results that come from sorting stuff into eighteen clusters. With this amount, clusters appear to have significance, without being too crammed with different topics or spread too thin. Even the overlap between clusters has been interesting. For instance, one of the clusters was as follows:

 >αρισταρχος ασκαλωνιτης εχει ομοιως τελους προς οξειαν αυτῳ βαρυνεται ευθειας
 
 While the other looked like this:
 
 >αρισταρχος ενθαδε εχει ζηνοδοτος μετρον ποιητῃ τρωων περισσος λεγειν ποτε
 
Clearly, these topics both center around Aristarchus. However, they do not feature him in the same light. Placing his name next to οξειαν, βαρυνεται, and ασκαλωνιτης, the former topic seems to highlight Aristarchus' marking/pronouncing comments. The latter topic, by juxtaposing his name with ζηνοδοτος, ποιητῃ, and λεγειν seems to suggest a cross-temporal discussion between the alleged Homer's work, what Zenodotus wrote, and what Aristarchus wrote in response.

Topic Modeling With Critical Signs:


Conclusion???
