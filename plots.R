pairs(~Amount.Requested+Amount.Funded.By.Investors+Interest.Rate+Monthly.Income+Open.CREDIT.Lines+Revolving.CREDIT.Balance+Inquiries.in.the.Last.6.Months, data=loansData)
chart.Correlation(loansData[,c(1,2,3,9,11,12,13)], histogram=TRUE, pch="+")
plot(loansDataByFICO[[10]][,]), loansDataByFICO[[10]][,])
qplot(loansDataByFICO[[10]][,1], loansDataByFICO[[10]][,3], geom=c("point","smooth"))