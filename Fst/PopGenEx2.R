pops <- replicate(3, sample(c("AA", "AT", "TT"), 700768, replace=TRUE), simplify=FALSE)
names(pops)<-paste("pop", 1:3, sep="")
p <- lapply(pops, function(x) ((sum(x == "AA")*2) + sum(x == "AT"))/1401536)
q <- lapply(pops, function(x) ((sum(x == "TT")*2) + sum(x == "AT"))/1401536)
obs_hetero <- lapply(pops, function(x) ((sum(x == "AT")))/700768)

p^2 + q^2 + 2*p*q =1
2*p*q = 1 - p^2 - q^2

two_pq <- 1 - (unlist(p))^2 - (unlist(q))^2

mean(unlist(p)) + mean(unlist(q))


HS <- ((0.4999994*700768)+(0.5*700768)+(0.5*700768))/(700768*3)
HS_2 <- sum(two_pq*700768)/(700768*3)
HT <- 2*mean(unlist(p))*mean(unlist(q))
FST <- (HT-HS)/HT

