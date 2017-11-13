## Multiple Comparisons

## Using the dataset datasets::airquality, let's compare the mean of
## Ozone by Month.
suppressMessages({
  library(ggplot2)
  library(dplyr)
})
data("airquality")

## 1. Make an appropriate plot for ANOVA, specifically including means
## (as red dots, say).  For fun, try fancier plots that similarly plot
## a measure of center, a measure of skew, and a measure of width.
## Hint: use rstudio ggplot2 cheatsheet

plot <- qplot(factor(Month), Ozone, data=airquality, geom="boxplot", na.rm=TRUE)
model <- lm(Ozone~factor(Month), data=airquality)
anova(model)

## 3. Perform an analysis of variance at alpha = 0.01.  What do you
## conclude?

# Our p-value is approx. 0.0000048, which is much smaller than 0.01, so we can 
# conclude that at least one of the means of airquality is not the same as the rest.

## 4. With a Bonferroni adjusted level of significance, which means
## are different from which?
# Bonferroni is a* = a/K

# 

## 5. Pay particular attention to the comparisons mu_6 = mu_7 and mu_7
## = mu_9.  Describe and explain the statistical anomoly seen here.

## Bootstrap

## Consider our beloved email dataset.

## 1. Make a plot of the variable line_breaks and describe the
## plot.

## 2. Using the CLT and hence qt(), calculate a 98% confidence
## interval of the sample mean of line_breaks.  Interpret your
## conifedence interval in context.

## 3. Calculate a 98% bootstraped confidence interval of the sample mean
## of line_breaks.  Interpret your conifedence interval in context.
## Use type "bca".

## 4. Compare your confidence intervals.

## 5. Using the CLT, calculate a 98% confidence interval of the sample
## median of line_breaks.
## Hint: since the CLT doesn't quite help us here (the median is not
## the sample mean), quit and move on to 6.

## 6. Calculate a 98% bootstraped confidence interval of the sample
## median of line_breaks.  Interpret your conifedence interval in
## context.  Use type "bca".

## 7. Calculate a 95% confidence interval of the difference of sample
## means of number of line breaks by format -- two sample t-test.
## Interpret your confidence interval in context.

## 8. Calculate a 95% bootstraped confidence interval of the difference
## of sample means of number of line breaks by format -- bootstrap
## equivalent two sample t-test.  Interpret your confidence interval
## in context.

## 9. Compare your intervals.

## 10. Using the CLT, Calculate a 98% confidence interval of the
## difference of standard deviation of line_breaks broken up some by
## binary categorical variable.
## Hint: since the CLT doesn't quite help us here (the standard
## deviation is not the sample mean), quit and move on to 11.

## 11. Calculate a 98% bootstraped confidence interval of the difference
## of standard deviation of line_breaks broken up some by binary
## categorical variable.  Interpret your conifedence interval in
## context.  Use type "bca".
