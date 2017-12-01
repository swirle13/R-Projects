
suppressMessages({
  library(tidyverse)
  saltmarsh <- read.csv("C:/Programming/R stuff/saltmarsh.csv")
})

# 1. I chose the provided dataset at roualdes.us/data/saltmarsh.csv
#    and I'm choosing the variables salt and biomass in an attempt 
#    to view any correlation between the amount of salt placed
#    and the corresponding biomass that grew on it.

# 2.
p <- qplot(salt, biomass, data = saltmarsh)
p + stat_smooth(method="lm", se=FALSE) # no standard error
R <- with(saltmarsh,
     cor(salt, biomass))
saltReg <- lm(biomass~salt, data = saltmarsh)
summary(saltReg)

# example of colored by categorical variable but single colored line
# ggplot(hospital, aes(stay, infecion_risk)) 
#      + geom_point(aes(colour=factor(region))) 
#      + stat_smooth(method="lm", se=FALSE)

# 3. The slope is -0.492 with a correlation of -0.647 and an intercept of 20.210.

# 4.
# My adjusted R-squared is .3921. Therefore, 39.21% of the variation in biomass
# is explained by the least squares line on salt.

# 5.
# H0: B = 0;
# H1: B != 0
# alpha = 0.02
confint(saltReg, level = 0.98)

# 6.
# We are 98% confident when salt is 0, the amount of biomass is between 12.7 and 27.7 grams.
# 