datamunging <- function() {
fileUrl <- "https://spark-public.s3.amazonaws.com/dataanalysis/loansData.csv"
download.file(fileUrl, destfile="./data/loansData.csv", method="curl")
loansData = read.csv("./data/loansData.csv")
loansData$Interest.Rate <- as.numeric(gsub( "%", "", as.character(loansData$Interest.Rate)))
loansData$Debt.To.Income.Ratio <- as.numeric(gsub( "%", "", as.character(loansData$Debt.To.Income.Ratio)))
loansData$FICO.Range <- as.numeric(lapply(strsplit(as.character(loansData$FICO.Range),"-"),"[",1))   
loansData$cluster  <- kmeans(loansData[,10], centers=3)$cluster
loansDataByFICO <- split(loansData, loansData$cluster)
loansData1=loansDataByFICO[[1]]
loansData2=loansDataByFICO[[2]]
loansData3=loansDataByFICO[[3]]
lm <- lm(loansData1$Interest.Rate~loansData1$Interest.Rate)
}