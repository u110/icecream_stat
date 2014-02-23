d<-read.csv("./Documents/icecream_stat/4_6.csv")
cor(d)
plot(d)
names(d)<-c("id","point","grade")
liner_model <- lm(grade~point,d)

test_dat <- data.frame(point=c(4:7*100))

predict_dat <- predict(liner_model,test_dat)
res<-data.frame(test_dat,pred=predict_dat)

library('ggplot2')

qplot(data=d,x=point,y=grade,goem='point')+
geom_abline(slope=0.008068, intercept=-1.797487)+
geom_vline(x=c(4:7*100))


