## we need a data object with doses >= 1:
data<-Data(x=c(25,50,50,75,150,200,225,300),
           y=c(0,0,0,0,1,1,1,1),
           doseGrid=seq(from=25,to=300,by=25))
##The 'nextBest' method using NextBestTD' rules class object
## That is dose-esclation procedure using the 'logisticIndepBeta' DLE model involving DLE samples
## model must be of 'LogisticIndepBeta' class
model<-LogisticIndepBeta(binDLE=c(1.05,1.8),DLEweights=c(3,3),DLEdose=c(25,300),data=data)
##target probabilities of the occurrence of a DLE during trial and at the end of trial 
## are defined as 0.35 and 0.3, respectively
tdNextBest<-NextBestTD(targetDuringTrial=0.35,targetEndOfTrial=0.3)

##doselimit is the maximum allowable dose level to be given to subjects
RecommendDose<- nextBest(tdNextBest,
              doselimit=max(data@doseGrid),
              model=model,
              data=data)