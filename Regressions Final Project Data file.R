stocks <- read.csv("Regression Project Data_NR Clean.csv")

#max.DOW <- max(stocks$DOWJONES,stocks$date)
#max.SP <- max(stocks$SP500,stocks$date)
#max.NAS <- max(stocks$NASDAQ,stocks$date)



#model= lm(log(stocks$DOWJONES) ~ log(stocks$price))
#summary(model)




par(mfrow=c(1,3), mar=c(7.2,4,1,1), xpd=FALSE)
cex.factor <- 1.3
plot(stocks$DOWJONES, stocks$date, pch=20, xlab="Time", 
     ylab="Value", yaxt="n", 
     ylim=c(0,max.DOW), cex.lab=cex.factor, cex.axis=cex.factor)

axis(side=2, at=seq(0,1000*floor(max.rentals)/1000, by=2000), 
     cex.lab=cex.factor, cex.axis=cex.factor)
abline(casual.reg, col=2, lwd=2)
abline(casual.reg1, col=3, lwd=2)

plot(bike$humidity, bike$registered, pch=20, 
     xlab="Humidity", ylab="Registered Rentals", 
     yaxt="n", ylim=c(0,max.rentals), cex.lab=cex.factor, 
     cex.axis=cex.factor)
axis(side=2, at=seq(0,1000*floor(max.rentals)/1000, by=2000), 
     cex.lab=cex.factor, cex.axis=cex.factor)
abline(registered.reg, col=2, lwd=2)
abline(registered.reg1, col=3, lwd=2)
par(xpd=NA)
legend(x=-72, y=-1650, legend=c("All Data","Humidity > 0"), 
       col=c(2,3), lty=1, lwd=2, ncol=2, cex=cex.factor)
par(xpd=FALSE)


#rdate<-data.frame (dates= c(stocks$date))











#plot(log(stocks$DOWJONES)~log(rdate), type="l", col="red")
#axis(1,rdate,format(rdate,"%m-%y"))

#rdate[order(as.Date(stocks$date, format= "%d/%m/%y")),]



