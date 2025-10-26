itc255= read.csv("C:/Users/Dell/Documents/RProjects/Sana_Yousaf_ITC255.CSV")
View(itc255)
names(itc255)
#1
AbsFreq=table(itc255$LEVEL.of.SATISFACTION)
AbsFreq
prop.table(AbsFreq)
RelFreq=round(prop.table(AbsFreq), 2)
RelFreq
CumFreq=cumsum(RelFreq)
CumFreq
FDTSkillLevel=cbind(AbsFreq,RelFreq,CumFreq)

FDTQL=function(x) {
  AbsFreq=table(x)
  RelFreq=round(prop.table(AbsFreq), 2)
  CumFreq=cumsum(RelFreq)
  FDTx= cbind(AbsFreq,RelFreq,CumFreq)
  return(FDTx)
  
}
FDTQL(itc255$LEVEL.of.SATISFACTION)
#2 Gender
AbsFreq=table(itc255$GENDER)
AbsFreq
prop.table(AbsFreq)
RelFreq=round(prop.table(AbsFreq), 2)
RelFreq
CumFreq=cumsum(RelFreq)
CumFreq
FDTSGender=cbind(AbsFreq,RelFreq,CumFreq)

FDTQL=function(x) {
  AbsFreq=table(x)
  RelFreq=round(prop.table(AbsFreq), 2)
  CumFreq=cumsum(RelFreq)
  FDTx= cbind(AbsFreq,RelFreq,CumFreq)
  return(FDTx)
  
}
FDTQL(itc255$GENDER)
#3
summary(itc255$AGE)

head(itc255)
#4
catitc255 <- c()

for (k in 1:length(itc255$AGE)) {
  age <- itc255$AGE[k]
  
  if (age < 20) {
    catitc255[k] <- "Youth"
  } else if (age >= 20 & age < 25) {
    catitc255[k] <- "Young Adult"
  } else if (age >= 25 & age < 30) {
    catitc255[k] <- "Adult"
  } else {
    catitc255[k] <- "Senior"
  }
}
itc255$AgeCategory <- catitc255
table(itc255$AgeCategory)
FDTQL(itc255$AgeCategory)

#5 PIE AND BAR
FDTQL(itc255$GENDER)[,2]

fdtGender=FDTQL(itc255$GENDER)[,2]
fdtGender

pie(fdtGender, 
    col = c("lightblue", "pink"), 
    main = 'Gender Distribution')

barplot(fdtGender,
        col = c("yellow", "white"),
        main = "Gender Distribution")

#histogram and density plot
head(itc255)

hist(itc255$SALARY, 
     col='blue', 
     main = 'Salary Distibution')

plot(density(itc255$SALARY), 
     col='black', 
     main='Salary Distribution')


plot(density(itc255$SALARY), 
     col='brown', 
     main='Salary Distribution')

