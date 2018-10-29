#Install packages
install.packages("datasets")
install.packages("ggplot2")

#Load library and data set
library(datasets)
data(iris)
summary(iris)

#Base R graphics
plot(iris)
plot(iris$Sepal.Width, iris$Sepal.Length)
hist(iris$Sepal.Width)


#ggplot grpahics
library("ggplot2")
ggplot(iris, aes(x = Petal.Length, y = Sepal.Length, colour = Species)) +
        geom_point() +
        ggtitle('Iris Species by Petal and Sepal Length')

#Regression
iris[['Is.Versicolor']] <- as.numeric(iris[['Species']] == 'versicolor')
fit.lm <- lm(Is.Versicolor ~ Petal.Length + Sepal.Length, data = iris)
summary(fit.lm)
