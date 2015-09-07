
training<-read.csv("poker-hand-training-true.data",sep=",", header =F)

#for sample size =10
training_sample_10<-training[sample(seq(1,25010),10,),]

#for sample size =100
training_sample_100<-training[sample(seq(1,25010),100,),]

#for sample size=1000
training_sample_1000<-training[sample(seq(1,25010),1000,),]

#for sample size=10000
training_sample_10000<-training[sample(seq(1,25010),10000,),]


