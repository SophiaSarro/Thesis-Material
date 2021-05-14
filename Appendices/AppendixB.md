
# Appendix B:  datasheet for Topic Models of Venetus A Scholia


The organization of this datasheet is closely modelled on @Gebru2018.

## (1) Motivation

- Purpose: To identify recurring patterns of co-occurring terms in the scholia of the Venetus A manuscript
- Creators: Sophia Sarro
- Support: Neel Smith, Graeme Bird


## (2) Composition

- what does one instance represent? a topic model for a defined set of scholia.
- how many instances are there in total? 5
- does the dataset contain all possible instances or is it a sample? If a sample, what is the larger set, and is the sample representative?   The "all words" model covers all scholia.  The other four models model scholia associated with a particular critical sign on the Iliad line they comment on.
- what does each instance consist of?  Each topic model includes tabular data created with David Mimno's jsLDA for document topics, topic words, topic summaries and topic-topic connections.
- errors, sources of noise, redundancies? The text has not been lemmatized, leading to the same term appearing multiple times. 
- is the dataset self-contained?  if it relies on external resources, what are archival long-term versions? Yes, it is self-contained.
- confidential or sensitive data? No.


## (3) Collection

- how was data for each instance collected? Words from the Venetus A scholia were collected from the diplomatic digital edition published by the Homer Multitext Project in 2018. These words were then run through topic modeling software created by David Mimno. 
- who did the data collection? Sophia Sarro
- date range of data collection? September 2020 - May 2021


## (4) Prepocessing, cleaning, labeling

- was any prepocessing, cleaning, or labeling applied? No.
- was the raw/archival source saved? Yes.

## (5) Uses

- has the dataset already been used? Yes.
- repo linking to papers or systems using the data? https://github.com/SophiaSarro/Thesis-Material/
- other tasks the data could be used for? Other topic models pertaining to the Venetus A manuscript.
- any tasks the data should NOT be used for? N/A


## (6) Distribution


- how is the dataset distributed? Github repo
- when will it be distributioned? May 2021
- legal license? Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)


## (7) Maintenance

- who is hosting/maintaining the data set? Sophia Sarro
- will it be updated? No.
- will older versions of the data set continue to be hosted? Yes.
- is there a mechanism for others to contribute/extend the dat set? Github issue tracker.
