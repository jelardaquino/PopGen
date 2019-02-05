pops_before <- replicate(25, sample(c("CC", "CG", "GG"), 990, replace=TRUE), simplify=FALSE)
names(pops_before)<-paste("pop", 1:25, sep="")

freq_C_before <- lapply(pops_before, function(x) ((sum(x == "CC")*2) + sum(x == "CG"))/1980)
freq_G_before <- lapply(pops_before, function(x) ((sum(x == "GG")*2) + sum(x == "CG"))/1980)


hist(unlist(freq_C_before), breaks=10)
hist(unlist(freq_G_before))

plot(unlist(freq_C_before), unlist(freq_G_before), pch=16, cex=2, col="turquoise", xlab="Freq C", ylab="Freq G")

plot(unlist(freq_C_before), type="b", pch=19, col="red", xlab="Population", ylab="Freq of C", ylim=c(0.46, 0.54))
lines(unlist(freq_C_after), type="b", pch=19, col="blue", lty=2)
legend("topright", legend=c("Before", "after"), col=c("red", "blue"), lty=1:2, cex=0.8)



mean(unlist(freq_C_before))

mean(unlist(freq_C_after))
mean(unlist(freq_G_after))


pops_after <- lapply(pops_before, function(x) sample(x, 742, replace=FALSE))

freq_C_after <- lapply(pops_after, function(x) ((sum(x == "CC")*2) + sum(x == "CG"))/1484)
freq_G_after <- lapply(pops_after, function(x) ((sum(x == "GG")*2) + sum(x == "CG"))/1484)

for(i in 1:25){
  sample(pops_before[[i]], 742, replace=FALSE)
}

length(pops_before)
length(pops_before[[2]])

pops_after
pops_before
