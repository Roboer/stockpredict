library(xts)

company <- read.table("company_data.csv",sep='|')

t = with(company, as.POSIXct(V4) )
company$pTime = t

companydata <- company[,c(1,8,7)]
#c1.q1 <- companydata[(companydata$V1 == 'c1') & (companydata$pTime <= '2011-04-15'),]
#c1q5.xts <- as.xts(c1.q5[,3],order.by=c1.q5$pTime)
#plot(c1q5.xts)

stock <- c('c1','c2','c3','c4','c5','c6','c7','c8','c9','c10','c11','c12','c13','c14','c15','c16','c17','c18')

Q1.time <- c('2011-01-01','2011-04-15','2011-04-01','2011-07-15',
             '2011-07-01','2011-10-15','2011-10-01','2012-1-15',
             '2012-01-01','2012-4-15','2012-04-01','2012-07-15')

extract <- function(companyid,timeindex){
  companydata[(companydata$V1 == companyid) & (companydata$pTime >= timeindex[1]) & (companydata$pTime <= timeindex[2]),]$V7
  
}



c3.q1 <- extract(c3,c('2011-01-01','2011-04-15'))
c3.q2 <- extract(c3,c('2011-04-01','2011-07-15'))
c3.q3 <- extract(c3,c('2011-04-01','2011-07-15'))
c3.q4 <- extract(c3,c('2011-10-01','2012-01-15'))
c3.q5 <- extract(c3,c('2012-01-01','2012-04-15'))
c3.q6 <- extract(c3,c('2012-04-01','2012-07-15'))


c3.q1 <- companydata[(companydata$V1 == 'c3') & (companydata$pTime <= '2011-04-15'),]$V7
c3.q2 <- companydata[(companydata$V1 == 'c3') & (companydata$pTime >= '2011-04-01') & (companydata$pTime <= '2011-07-15'),]$V7
c3.q3 <- companydata[(companydata$V1 == 'c3') & (companydata$pTime >= '2011-07-01') & 
                       (companydata$pTime <= '2011-10-15'),]$V7
c3.q4 <- companydata[(companydata$V1 == 'c3') & (companydata$pTime >= '2011-10-01') & 
                       (companydata$pTime <= '2012-1-15'),]$V7

c3.q5 <- companydata[(companydata$V1 == 'c3') & (companydata$pTime >= '2012-01-01') & 
                       (companydata$pTime <= '2012-4-15'),]$V7

c3.q6 <- companydata[(companydata$V1 == 'c3') & (companydata$pTime >= '2012-04-01') & 
                       (companydata$pTime <= '2012-07-15'),]$V7
