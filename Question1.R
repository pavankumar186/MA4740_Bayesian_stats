#i
# Method 1
qnorm(0.05,mean=-0.5,sd=1)
qnorm(0.95,mean=-0.5,sd=1)
# Method 2
vals<-rnorm(500,mean=-0.5,sd=1)
quantile(vals,probs=c(0.05,0.95)) 

#ii
# Method 1
qgamma(0.05, shape=2, rate=3)
qgamma(0.95, shape=2, rate=3)
# Method 2
vals<-rgamma(500,shape=2,rate=3)
quantile(vals,probs=c(0.05,0.95)) 

#iii
# Method 1
qbeta(0.05, shape1 = 1, shape2 = 4)
qbeta(0.95, shape1 = 1, shape2 = 4)
# Method 2
vals<-rbeta(500,shape1=1,shape2=4)
quantile(vals,probs=c(0.05,0.95)) 

#iv
# Method 1
qchisq(0.05,df=5)
qchisq(0.95,df=5)
# Method 2
vals<-rchisq(500,df=5)
quantile(vals,probs=c(0.05,0.95)) 

#v
# Method 1
qexp(0.05,rate=2)
qexp(0.95,rate=2)
# Method 2
vals<-rexp(500,rate=2)
quantile(vals,probs=c(0.05,0.95)) 
