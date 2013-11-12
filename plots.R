pairs(~Amount.Requested+Amount.Funded.By.Investors+Interest.Rate+Monthly.Income+Open.CREDIT.Lines+Revolving.CREDIT.Balance+Inquiries.in.the.Last.6.Months, data=loansData)
chart.Correlation(loansData[,c(1,2,3,9,11,12,13)], histogram=TRUE, pch="+")
plot(loansDataByFICO[[10]][,]), loansDataByFICO[[10]][,])
qplot(loansDataByFICO[[10]][,1], loansDataByFICO[[10]][,3], geom=c("point","smooth"))

dev.new(width=4, height=4)
with(loansData, plot(FICO.Range, Interest.Rate, type='n'))
cor.test(loansData$Interest.Rate[loansData$FICO.Range>680 & loansData$FICO<725],loansData$Amount.Requested[loansData$FICO.Range>680 & loansData$FICO<725])

#with(loansData, text(var1, var2, var3, col=cl))