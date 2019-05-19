## Wind Power Forescast
This repository is to enhance a code in R programming language that goals to plot wind power forecasts from a dynamic ten days ahead of time horizon from ten different text files with **dynamic date names**, based on the same time horizon.

The files names follow the below pattern:

- YYYYMMDD_standard_name

For instance:

- 20190520_Northeastern -> Dataset from May 20th of 2019

The hurdle is to find an auto way to take the dataset when the time horizon span a month change  

For example:

- The time horizon is from D0 to D9;
- When D0 is near to the end of a month we have the follow problem:
 - 20190525_Northeastern -> D0
 .
 .
 .
 - 20190531_Northeastern -> D6 (May last day)
 
 - 20190532_Notheastern -> D7 (From this day, D7, forward I have two problems. First, doesn't exist May 32nd. Second, the next month, in this case, is June).
 
 Finally, I am trying to solve these problems to import the datasets automatically during month changes.
