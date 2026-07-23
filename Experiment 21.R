data("iris")

iris_sub = subset(iris, Species %in% c("setosa","versicolor"))
iris_sub$Species = droplevels(iris_sub$Species)

m = glm(Species ~ Petal.Length + Petal.Width,
        data = iris_sub,
        family = binomial)

p = ifelse(predict(m, type="response") > 0.5,
           "versicolor","setosa")

table(p,iris_sub$Species)

