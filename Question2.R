##2(i)
# We want to find posterior distr of p1. We know from class, that if
# prior distr is beta(a,b) and we have n data points say x_i from binomial(k,p1), then
# posterior distr is beta(a+sigma(x_i),b+n*k-sigma(x_i))

# For p1, a=2, b=2, n=10, sigma(x_i)=100, k=20 => posterior distr of p1 is beta(102,102)
# Similarly for p2, a=2, b=2, n=15, sigma(x_i)=80, k=10 => posterior distr of p2 is beta(82,72)

p1<-rbeta(500,102,102)
p2<-rbeta(500,82,72)
p<-p1-p2
count=0
for (i in p){
  if (i>0){
    count=count+1
  }
}
print(count/500)

##2(ii)
#Median is the 50% quantile, therefore we use the quantile function on the 
#data obtained from the posterior distr.

print(quantile(p1,probs=0.5))

##2(iii)

print(quantile(p2,probs=0.5))
