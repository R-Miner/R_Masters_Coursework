
testing<-read.csv("poker-hand-testing.data",sep=",", header =F)

#for sample size =10
testing_sample_10<-testing[sample(seq(1,1000000),10,),]

#for sample size =100
testing_sample_100<-testing[sample(seq(1,1000000),100,),]

#for sample size=1000
testing_sample_1000<-testing[sample(seq(1,1000000),1000,),]

#for sample size=10000
testing_sample_10000<-testing[sample(seq(1,1000000),10000,),]
