y = c(-1, -2, -1, 0, 2, 1, 1, 0)
plot(y, type = "l", col = "blue", xlim = c(0,8),
     main="8-points time series and its PAA transform into 3 points")

points(y, pch=16, lwd=5, col="blue")

abline(v=c(1,1+7/3,1+7/3*2,8), lty=3, lwd=2, col="gray50")

y_paa3 = paa(y, 3)

segments(1,y_paa3[1],1+7/3,y_paa3[1],lwd=1,col="red")
points(x=1+7/3/2,y=y_paa3[1],col="red",pch=23,lwd=5)

segments(1+7/3,y_paa3[2],1+7/3*2,y_paa3[2],lwd=1,col="red")
points(x=1+7/3+7/3/2,y=y_paa3[2],col="red",pch=23,lwd=5)

segments(1+7/3*2,y_paa3[3],8,y_paa3[3],lwd=1,col="red")
points(x=1+7/3*2+7/3/2,y=y_paa3[3],col="red",pch=23,lwd=5)

#
# #############
#
y = c(-1, -2, -1, 0, 2, 1, 1, 0)
plot(y, type="l", col="blue", xlim=c(0,8),
     main="8-points time series and its SAX transform into 3 letters string \'acc\'")
points(y, pch=16, lwd=5, col="blue")
abline(v=c(1,1+7/3,1+7/3*2,8), lty=3, lwd=2, col="gray50")
y_paa3 = paa(y, 3)
segments(1,y_paa3[1],1+7/3,y_paa3[1],lwd=1,col="red")
points(x=1+7/3/2,y=y_paa3[1],col="red",pch=23,lwd=5)
segments(1+7/3,y_paa3[2],1+7/3*2,y_paa3[2],lwd=1,col="red")
points(x=1+7/3+7/3/2,y=y_paa3[2],col="red",pch=23,lwd=5)
segments(1+7/3*2,y_paa3[3],8,y_paa3[3],lwd=1,col="red")
points(x=1+7/3*2+7/3/2,y=y_paa3[3],col="red",pch=23,lwd=5)

y <- seq(-2,2, length=100)
x <- dnorm(y, mean=0, sd=1)
lines(x,y, type="l", lwd=5, col="magenta")
abline(h = alphabet2cuts(3)[2:3], lty=2, lwd=2, col="magenta")
text(0.7,-1,"a",cex=2,col="magenta")
text(0.7, 0,"b",cex=2,col="magenta")
text(0.7, 1,"c",cex=2,col="magenta")

ts2string(y_paa3, 3)

min_dist(ts2string(y_paa3, 3), ts2string(rev(y_paa3), 3), 3)
str1=ts2string(y_paa3, 3)
str2=ts2string(rev(y_paa3), 3)

letters2idx(c('a','b','c','a'))

library(testthat)
library(covr)
package_coverage()

X = c(-1, -2, -1, 0, 2, 1, 1, 0)
p1=mean(X[1:4])
p2=sum(X[5:8])/4

p1
p2
sd(znorm(X))
mean(znorm(X))
