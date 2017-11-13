## 1. Load the hospital dataset.
url <- "https://roualdes.us/data/hospital.csv"
hospital <- read.csv(url)

## 2. Using the hospital dataset, pick two numerical variables of
## interest and plot them.  Describe the plots.
is.numeric(hospital$stay)
is.numeric(hospital$age)
qplot(stay, data=hospital)
# This graph shows us a plot of the average length of stays in days per hospital.
# The graph has a normal distribution with a right skew.
qplot(age, data=hospital)
# This graph shows us a plot of the average age of patients per hospital
# This graph has a normal distribution with no apparent skew.
qplot(stay, age, data=hospital)
# This scatter plot shows the correlation between the average stay and average ages of patients
# in a sample of hospitals. As age goes up, there's is a loose correlation of increased stay.

## 3. For each numerical variable, calculate 98% confidence intervals
## and interpret them.
xbar_stay <- mean(hospital$stay)
sigma_stay <- sd(hospital$stay)
n_stay <- length(hospital$stay)
conf_int_stay <- xbar_stay + qnorm(c(.01, .99)) * sigma_stay/sqrt(n_stay)
# I am 98% confident that the mean stay of the sampled hospitals is between 9.23 and 10.1 days.

xbar_age <- mean(hospital$age)
sigma_age <- sd(hospital$age)
n_age <- length(hospital$age)
conf_int_age <- xbar_age + qnorm(c(.01, .99)) * sigma_age/sqrt(n_age)
# I am 98% confident that the mean age of the average age of sampled patients in the respective
# sampled hospitals is between 52.3 and 54.2 years

## 4. Set up two appropriately matching hypothesis for each confidence
## interval (hence, four hypothesis tests) such that one of the
## hypothesis tests would be rejected based on its corresponding
## confidence interval and the other would fail to reject.

## 5. Use the library dplyr's function group_by and summarise to
## calculate confidence intervals and hypothesis test p-values by
## region, using the hypothesis test numbers you created in 4.
# just go look up some exapmles how summarise works

## 6. Do the conclusions appropriately match?  Explain.
