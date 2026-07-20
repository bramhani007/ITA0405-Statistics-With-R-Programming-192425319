spend=c(10,20,30,40,50)
sales=c(12,22,32,42,52)
model=lm(sales~spend)
predict(model,data.frame(spend=70))
