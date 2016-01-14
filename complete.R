complete <- function(directory, id = 1:332) {
    files_full <- list.files(directory, full.names = TRUE) 
    dat <- data.frame()
    for( i in id){
        nobs <- sum(complete.cases(read.csv(files_full[i])))
        temp <- data.frame(i, nobs)
        dat <- rbind(dat, temp)
    }
    dat
}