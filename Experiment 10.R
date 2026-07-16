x=data.frame(
  name=c("Hani","Mani","Mahi","Sujan"),
  score=c(98,96,93,92),
  attempts=c(1,2,3,4),
  qualify=c("yes","yes","yes","yes")
)

x=rbind(x,data.frame(name="Bramhani",score=90,attempts=2,qualify="yes"))

x$grade=c("A","B","A+","B","A")

x=x[order(-x$score),]

write.csv(x,"x.csv",row.names=FALSE)

print(x)
