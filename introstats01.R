## 1. R(Studio) has built in help files, try
?mean

## 2. Read in the dataframe from Lecture IntroStats slide 13/76 into a
## variable named email.

## 3. Copy and paste all the code from Lecture IntroStats slide 13/76
## - 23/76

## 4. Pick another numerically encoded, binary, categorical variable
## from this dataset named email, and calculate the proportion two
## ways.    Assuming this is a random sample of emails, interpret the
## number in language that your grandmother could understand.
## Hints:
?head
?names
?==

## 5. You can create regular sequences with :.    Use : to create a
## regular sequence of non-zero integers less than 3921 and store it
## into a variable named x.    Just for added difficulty later on, don't
## start at 1.
## Hint: one of these should work for you
?`:` # or
?:

## 6. R uses square brakets [] for indexing vectors.    Extract the
## first element of the variable you named x, by indexing it
## with brackets.
## Hint:
?`[` # or
?[

## 7. Using the variable you unamed x, extract x-th elements from a
## column of your choice from the dataframe named email.

## 8. Use a for loop to accomplish the same thing from 7.

## 9. Pick a continuous, numerical variable from the dataframe email
## and calculate the mean, median, and standard deviation.
## For added challenge, try using dplyr::summarise.
## Hint: library(tidyverse); ?dplyr::summarise

## 10. Using the dataframe email, make one of each type of plot --
## don't steal my plots, make your own.
