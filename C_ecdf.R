png("Graph_C.png")

#Step 1

#Creating training datset of sample size = 10
training<-read.csv("poker-hand-training-true.data",sep=",", header =F)
training_sample_10<-training[sample(seq(1,25010),10,),]

#Code for plotting ecdf of attribute V1 of the above sample

plot(ecdf(training_sample_10[,1]),verticals = TRUE, do.p = FALSE, main ="ECDF for pokerhand samples and training set",xlab="Attributes",ylab = "Cumulative percentage", xlim = c(0,13),col="blue")

#Step 2

#ECDF for all attributes of training dataset of sample size = 10
for(i in 2:11)
{
lines(ecdf(training_sample_10[,i]),verticals = TRUE, do.p = FALSE, col="blue")
}


#Step3

#ECDF for all attributes of training dataset of sample size = 100
training_sample_100<-training[sample(seq(1,25010),100,),]
for(i in 1:11)
{
lines(ecdf(training_sample_100[,i]),verticals = TRUE, do.p = FALSE, col="green",lwd=2)
}

#Step4

#ECDF for all attributes of training dataset of sample size = 1000
training_sample_1000<-training[sample(seq(1,25010),1000,),]
for(i in 1:11)
{
lines(ecdf(training_sample_1000[,i]),verticals = TRUE, do.p = FALSE, col="black",lwd=3)
}


#Step5

#ECDF for all attributes of training dataset of sample size = 10000
training_sample_10000<-training[sample(seq(1,25010),10000,),]
for(i in 1:11)
{
lines(ecdf(training_sample_10000[,i]),verticals = TRUE, do.p = FALSE, col="brown",lwd=4)
}

#Step6

#ECDF for all attributes of training dataset 
for(i in 1:11)
{
lines(ecdf(training[,i]),verticals = TRUE, do.p = FALSE, col="red")
}


#Step 7
#legend

legend(8,.4,c("Sample size 10","Sample size 100","Sample size 1000","Sample size 10000","Training Set"),col=c("blue","green","black","brown","red"),lwd=c(1,2,3,4))


dev.off()

