#GGPLOT2
library(tidyverse)
itc255<- read.csv("C:/Users/Dell/Documents/RProjects/Sana_Yousaf_ITC255.CSV")  
head(itc255)
colnames (itc255)
#scaterplot
ggplot(data = itc255, aes(x = HEIGHT.cm., y = AGE)) +
  geom_point(color = "pink", alpha = 0.6) +
  geom_smooth(method = "loess", color = "gray") +
  theme_classic() +
  labs(title = "Height vs Age", x = "Height (cm)", y = "Age")

#FACET
ggplot(itc255, aes(x = SALARY, y = AGE)) +
  geom_point() +
  facet_wrap(~ Salary.Category) +
  labs(title = "Salary vs Age by Income Category")
# GEOMS HISTOGRAM, BARCHART
ggplot(itc255, aes(x = SALARY)) +
  geom_histogram(binwidth = 50000, fill = "orange", color = "black") +
  labs(title = "Salary Distribution")
ggplot(itc255, aes(x = LEVEL.of.SATISFACTION)) +
  geom_bar(fill = "red") +
  labs(title = "Satisfaction Level Distribution")

#smoothline
ggplot(data = itc255, aes(x = HEIGHT.cm., y = AGE)) +
  geom_point(color = "pink", alpha = 0.6) +
  geom_smooth(method = "loess", color = "gray") +
  theme_classic() +
  labs(title = "Height vs Age", x = "Height (cm)", y = "Age")

ggplot(itc255, aes(x = AGE, y = SALARY)) +
  geom_point() +
  geom_smooth() +
  theme_classic() +
  ggtitle("Salary by Age") +
  xlab("Age") +
  ylab("Salary")
