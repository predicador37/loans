datamunging <- function() {
fileUrl <- "https://spark-public.s3.amazonaws.com/dataanalysis/loansData.csv"
download.file(fileUrl, destfile="./data/loansData.csv", method="curl")
loansData = read.csv("./data/loansData.csv")
loansData$Interest.Rate <- as.numeric(gsub( "%", "", as.character(loansData$Interest.Rate)))
loansData$Debt.To.Income.Ratio <- as.numeric(gsub( "%", "", as.character(loansData$Debt.To.Income.Ratio)))
loansDataByFICO <- split(loansData, loansData$FICO.Range)
}