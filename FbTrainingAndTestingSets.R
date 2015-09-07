
#Step 1

png("Graph_Fb.png")
training<-read.csv("poker-hand-training-true.data",sep=",", header =F)
testing<-read.csv("poker-hand-testing.data",sep=",", header =F)

par(mfrow = c(1,2))

#Creating training datset of sample size = 10
training_sample_10<-training[sample(seq(1,25010),10,),]

#Code for plotting relative frequency of attribute V1 of tha above sample
hist_training_sample_10_V1<-hist(training_sample_10[,1],breaks=seq(0,13,by= 1),plot =FALSE)
hist_training_sample_10_V1_breaks<-hist_training_sample_10_V1$breaks
hist_training_sample_10_V1_counts<-hist_training_sample_10_V1$counts
plot(c(0.5,hist_training_sample_10_V1_breaks+0.5),c(0,hist_training_sample_10_V1_counts/10,0),pch=19,xlab="Attributes",ylab="Relative Freq",main="Relative Frequency Polygon for training set samples",col="blue",ylim=c(0,1))
lines(c(0.5,hist_training_sample_10_V1_breaks+0.5),c(0,hist_training_sample_10_V1_counts/10,0),col="blue")

#Step 2

#Relative Frequency Polygon for all attributes of training dataset of sample size = 10
for(i in 2:11)
{

hist_training_sample_10_Vi<-hist(training_sample_10[,i],breaks=seq(0,13,by= 1),plot =FALSE)

hist_training_sample_10_Vi_breaks<-hist_training_sample_10_Vi$breaks
hist_training_sample_10_Vi_counts<-hist_training_sample_10_Vi$counts
points(c(0.5,hist_training_sample_10_Vi_breaks+0.5),c(0,hist_training_sample_10_Vi_counts/10,0),pch =19,col="blue")
lines(c(0.5,hist_training_sample_10_Vi_breaks+0.5),c(0,hist_training_sample_10_Vi_counts/10,0),col="blue",lty=1)
}

  
# Step 3
#for sample size =100

training_sample_100<-training[sample(seq(1,25010),100,),]

for(i in 1:11)
{

hist_training_sample_100_Vi<-hist(training_sample_100[,i],breaks=seq(0,13,by= 1),plot =FALSE)

hist_training_sample_100_Vi_breaks<-hist_training_sample_100_Vi$breaks
hist_training_sample_100_Vi_counts<-hist_training_sample_100_Vi$counts
points(c(0.5,hist_training_sample_100_Vi_breaks+0.5),c(0,hist_training_sample_100_Vi_counts/100,0),pch =19,col="green")
lines(c(0.5,hist_training_sample_100_Vi_breaks+0.5),c(0,hist_training_sample_100_Vi_counts/100,0),col="green",lty=2)
}

# Step 4
#for sample size=1000

training_sample_1000<-training[sample(seq(1,25010),1000,),]
for(i in 1:11)
{

hist_training_sample_1000_Vi<-hist(training_sample_1000[,i],breaks=seq(0,13,by= 1),plot =FALSE)

hist_training_sample_1000_Vi_breaks<-hist_training_sample_1000_Vi$breaks
hist_training_sample_1000_Vi_counts<-hist_training_sample_1000_Vi$counts
points(c(0.5,hist_training_sample_1000_Vi_breaks+0.5),c(0,hist_training_sample_1000_Vi_counts/1000,0),pch =19,col="cyan")
lines(c(0.5,hist_training_sample_1000_Vi_breaks+0.5),c(0,hist_training_sample_1000_Vi_counts/1000,0),col="cyan",lty=3)
}

# Step 5
#for sample size=10000

training_sample_10000<-training[sample(seq(1,25010),10000,),]
for(i in 1:11)
{

hist_training_sample_10000_Vi<-hist(training_sample_10000[,i],breaks=seq(0,13,by= 1),plot =FALSE)

hist_training_sample_10000_Vi_breaks<-hist_training_sample_10000_Vi$breaks
hist_training_sample_10000_Vi_counts<-hist_training_sample_10000_Vi$counts
points(c(0.5,hist_training_sample_10000_Vi_breaks+0.5),c(0,hist_training_sample_10000_Vi_counts/10000,0),pch =19,col="black")
lines(c(0.5,hist_training_sample_10000_Vi_breaks+0.5),c(0,hist_training_sample_10000_Vi_counts/10000,0),col="black",lty=4)
}

#TESTING SET

#Step 1

#Creating testing datset of sample size = 10

testing_sample_10<-testing[sample(seq(1,1000000),10,),]

#Code for plotting relative frequency of attribute V1 of tha above sample
hist_testing_sample_10_V1<-hist(testing_sample_10[,1],breaks=seq(0,13,by= 1),plot =FALSE)
hist_testing_sample_10_V1_breaks<-hist_testing_sample_10_V1$breaks
hist_testing_sample_10_V1_counts<-hist_testing_sample_10_V1$counts
plot(c(0.5,hist_testing_sample_10_V1_breaks+0.5),c(0,hist_testing_sample_10_V1_counts/10,0),pch=19,xlab="Attributes",ylab="Relative Freq",main="Relative Frequency Polygon for testing set samples",col="blue",ylim=c(0,1))
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



dev.off()

