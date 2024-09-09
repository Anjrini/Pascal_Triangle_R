# Mustafa Anjrini on 09.09.2024

rm(list = ls())

pas<- function(n){
  n<-n-1
  a<-list(c(1,1))
  for (j in 1:n) {
    b<- c(rep(1,length(a[[j]])+1))
    for (i in 2:length(a[[j]])) {
      b[i]<-a[[j]][i-1]+a[[j]][i] 
    }
    a[[j+1]]<-b
  }
  return(a)
}
pas(4)
