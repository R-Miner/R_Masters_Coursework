png("Graph_F.png")

training<-read.csv("poker-hand-training-true.data",sep=",", header =F)
testing<-read.csv("poker-hand-testing.data",sep=",", header =F)

par(mfrow = c(1,2))

#Code for plotting relative frequency of attribute V1 of training set
hist_training_V1<-hist(training[,1],breaks=seq(0,13,by= 1),plot =FALSE)
hist_training_V1_breaks<-hist_training_V1$breaks
hist_training_V1_counts<-hist_training_V1$counts
plot(c(0.5,hist_training_V1_breaks+0.5),c(0,hist_training_V1_counts/25010,0),pch=19,xlab="Attributes",ylab="Relative Freq",main="Relative Frequency Polygon for training set",col="blue",ylim=c(0,1))
lines(c(0.5,hist_training_V1_breaks+0.5),c(0,hist_training_V1_counts/25010,0),col="blue")


#Relative Frequency Polygon for all attributes of training dataset 
for(i in 2:11)
{
hist_training_Vi<-hist(training[,i],breaks=seq(0,13,by= 1),plot =FALSE)

hist_training_Vi_breaks<-hist_training_Vi$breaks
hist_training_Vi_counts<-hist_training_Vi$counts
points(c(0.5,hist_training_Vi_breaks+0.5),c(0,hist_training_Vi_counts/25010,0),pch =19,col="blue")
lines(c(0.5,hist_training_Vi_breaks+0.5),c(0,hist_training_Vi_counts/25010,0),col="blue",lty=1)
}



#Code for plotting relative frequency of attribute V1 of testing dataset
hist_testing_V1<-hist(testing[,1],breaks=seq(0,13,by= 1),plot =FALSE)
hist_testing_V1_breaks<-hist_testing_V1$breaks
hist_testing_V1_counts<-hist_testing_V1$counts
plot(c(0.5,hist_testing_V1_breaks+0.5),c(0,hist_testing_V1_counts/1000000,0),pch=19,xlab="Attributes",ylab="Relative Freq",main="Relative Frequency Polygon for testing set",col="red",ylim=c(0,1))
lines(c(0.5,hist_testing_V1_breaks+0.5),c(0,hist_testing_V1_counts/1000000,0),col="red")

#Relative Frequency Polygon for all attributes of testing dataset 
for(i in 2:11)
{

hist_testing_Vi<-hist(testing[,i],breaks=seq(0,13,by= 1),plot =FALSE)

hist_testing_Vi_breaks<-hist_testing_Vi$breaks
hist_testing_Vi_counts<-hist_testing_Vi$counts
points(c(0.5,hist_testing_Vi_breaks+0.5),c(0,hist_testing_Vi_counts/1000000,0),pch =19,col="red")
lines(c(0.5,hist_testing_Vi_breaks+0.5),c(0,hist_testing_Vi_counts/1000000,0),col="red",lty=4)
}

dev.off()

