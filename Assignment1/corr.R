corr <- function(directory, threshold = 0){
    files_full <- list.files(directory, full.names = TRUE)
    result <- vector("numeric")
    for(i in 1 : 332){
        temp<-read.csv(files_full[i])
    	good<-complete.cases(temp)
    	temp1<-temp[good,]
    	if(nrow(temp1)>threshold){
            x<-temp1[,2]
            y<-temp1[,3]
            result<-append(result,cor(x,y))     
    	}
    }
    result
}    