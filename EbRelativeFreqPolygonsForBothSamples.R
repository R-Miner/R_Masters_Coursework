#Step 1

png("Graph_Eb.png")

#Creating testing datset of sample size = 10
testing<-read.csv("poker-hand-testing.data",sep=",", header =F)
testing_sample_10<-testing[sample(seq(1,1000000),10,),]

#Code for plotting relative frequency of attribute V1 of tha above sample
hist_testing_sample_10_V1<-hist(testing_sample_10[,1],breaks=seq(0,13,by= 1),plot =FALSE)
hist_testing_sample_10_V1_breaks<-hist_testing_sample_10_V1$breaks
hist_testing_sample_10_V1_counts<-hist_testing_sample_10_V1$counts
plot(c(0.5,hist_testing_sample_10_V1_breaks+0.5),c(0,hist_testing_sample_10_V1_counts/10,0),pch=19,xlab="Attributes",ylab="Relative Freq",main="Relative Frequency Polygon",col="blue",ylim=c(0,0.9))
lines(c(0.5,hist_testing_sample_10_V1_breaks+0.5),c(0,hist_testing_sample_10_V1_counts/10,0),col="blue")

#Step 2

#Relative Frequency Polygon for all attributes of testing dataset of sample size = 10
for(i in 2:11)
{

hist_testing_sample_10_Vi<-hist(testing_sample_10[,i],breaks=seq(0,13,by= 1),plot =FALSE)

hist_testing_sample_10_Vi_breaks<-hist_testing_sample_10_Vi$breaks
hist_testing_sample_10_Vi_counts<-hist_testing_sample_10_Vi$counts
points(c(0.5,hist_testing_sample_10_Vi_breaks+0.5),c(0,hist_testing_sample_10_Vi_counts/10,0),pch =19,col="blue")
lines(c(0.5,hist_testing_sample_10_Vi_breaks+0.5),c(0,hist_testing_sample_10_Vi_counts/10,0),col="blue",lty=1)
}

  
# Step 3
#for sample size =100

testing_sample_100<-testing[sample(seq(1,1000000),100,),]

for(i in 1:11)
{

hist_testing_sample_100_Vi<-hist(testing_sample_100[,i],breaks=seq(0,13,by= 1),plot =FALSE)

hist_testing_sample_100_Vi_breaks<-hist_testing_sample_100_Vi$breaks
hist_testing_sample_100_Vi_counts<-hist_testing_sample_100_Vi$counts
points(c(0.5,hist_testing_sample_100_Vi_breaks+0.5),c(0,hist_testing_sample_100_Vi_counts/100,0),pch =19,col="green")
lines(c(0.5,hist_testing_sample_100_Vi_breaks+0.5),c(0,hist_testing_sample_100_Vi_counts/100,0),col="green",lty=2)
}

# Step 4
#for sample size=1000

testing_sample_1000<-testing[sample(seq(1,1000000),1000,),]
for(i in 1:11)
{

hist_testing_sample_1000_Vi<-hist(testing_sample_1000[,i],breaks=seq(0,13,by= 1),plot =FALSE)

hist_testing_sample_1000_Vi_breaks<-hist_testing_sample_1000_Vi$breaks
hist_testing_sample_1000_Vi_counts<-hist_testing_sample_1000_Vi$counts
points(c(0.5,hist_testing_sample_1000_Vi_breaks+0.5),c(0,hist_testing_sample_1000_Vi_counts/1000,0),pch =19,col="cyan")
lines(c(0.5,hist_testing_sample_1000_Vi_breaks+0.5),c(0,hist_testing_sample_1000_Vi_counts/1000,0),col="cyan",lty=3)
}

# Step 5
#for sample size=10000

testing_sample_10000<-testing[sample(seq(1,1000000),10000,),]
for(i in 1:11)
{

hist_testing_sample_10000_Vi<-hist(testing_sample_10000[,i],breaks=seq(0,13,by= 1),plot =FALSE)

hist_testing_sample_10000_Vi_breaks<-hist_testing_sample_10000_Vi$breaks
hist_testing_sample_10000_Vi_counts<-hist_testing_sample_10000_Vi$counts
points(c(0.5,hist_testing_sample_10000_Vi_breaks+0.5),c(0,hist_testing_sample_10000_Vi_counts/10000,0),pch =19,col="black")
lines(c(0.5,hist_testing_sample_10000_Vi_breaks+0.5),c(0,hist_testing_sample_10000_Vi_counts/10000,0),col="black",lty=4)
}

# Step 6
#for testing set

for(i in 1:11)
{

hist_testing_Vi<-hist(testing[,i],breaks=seq(0,13,by= 1),plot =FALSE)

hist_testing_Vi_breaks<-hist_testing_Vi$breaks
hist_testing_Vi_counts<-hist_testing_Vi$counts
points(c(0.5,hist_testing_Vi_breaks+0.5),c(0,hist_testing_Vi_counts/1000000,0),pch =19,col="red")
lines(c(0.5,hist_testing_Vi_breaks+0.5),c(0,hist_testing_Vi_counts/1000000,0),col="red",lty=6)
}


#Step 7
#legend

legend(8,.75,c("Sample size 10","Sample size 100","Sample size 1000","Sample size 10000","Testing Set"),col=c("blue","green","cyan","black","red"),pch=19,lwd=c(1,2,3,4,6))

dev.off()
