#install.packages('devtools')
#install.packages("ggplot2")
#install.packages("gmodels")
library(devtools)
library(ggplot2)
library(gmodels)

mydata<-read.csv2('TelefMob.csv',header = TRUE,sep = ";",dec=",",na.strings = "nd")
dim(mydata)
colnames(mydata)
colnames(mydata)<- c("RatePlan", "Status", "Lifespan_days", "LastCallCenter_days", "LastTopUp_days", "RetailChannel","Minutes_Feb","Minutes_Gen", "Minutes_Dic", "Video_Feb", "Video_Gen", "Video_Dic", "SMS_Feb","SMS_Gen", "SMS_Dic", "Web_Feb", "Web_Gen", "Web_Dic" )

sapply(mydata,function(x)sum(is.na(x)))  # apply a function over a vector
mydata<-mydata[complete.cases(mydata),]  # vector without missing values
dim(mydata) # 20 observations less

summary(mydata$Status)
table(mydata$Status)

str(mydata)

mydata$Status<-as.factor(mydata$Status)
table(mydata$Status)
levels(mydata$Status)<-c("ON","OFF")
palette<-c("royalblue","lightblue","cornflowerblue","lightskyblue")

## Variable Status
table1<-table(mydata$Status)
plot(mydata$Status, xlab="Status of the SIM", ylab="Frequence", main= "Variable Status of the SIM", col=palette)
#' Variable Status of the SIM
#'
#' Descrizione
#'
#' @return plot
#' @export
#'
#' @examples
#' \dontrun{
#'    plVStatus()
#' }
plVStatus<-function()
{
  plot(mydata$Status, xlab="Status of the SIM", ylab="Frequence", main= "Variable Status of the SIM", col=palette)
}

## Variable Rateplan with respect to the Status
levels(mydata$RatePlan)
CrossTable(mydata$RatePlan,mydata$Status,prop.chisq=FALSE)
par(mfrow=c(1,2)) # Two plots in one row
table1<-table(mydata$Status, mydata$RatePlan)
prob.t<-prop.table(table1, margin=2)

supertua<-prob.t[,1]
pct1<-round(supertua*100)
lbls1<-paste(pct1,"%",sep="")
leg_pie_Supertua<-c("ON","OFF")
pie(supertua, main="Status of SuperTua", labels = lbls1, col=palette, init.angle = 90)
legend("topleft",leg_pie_Supertua, legend=leg_pie_Supertua, cex=0.6,fill = palette, box.col = palette)

tuamatic<-prob.t[,2]
pct2<-round(tuamatic*100)
lbls2<-paste(pct2,"%",sep="")
leg_pie_Tuamatic<-c("ON","OFF")
pie(tuamatic, main="Status of Tuamatic", labels = lbls2, col=palette,init.angle = 90)
legend("topleft",leg_pie_Tuamatic, legend=leg_pie_Tuamatic, cex=0.6,fill = palette, box.col = palette)

par(mfrow=c(1,1))


## Variable LastCallCenter_days with respect to Status
hist(mydata$LastCallCenter_days,freq=T,col=palette,main="Days /the last call to callcenter",xlab = "Days",ylab="Distribution of days from the last call to callcenter")
plot(mydata$Status,mydata$LastCallCenter_days,xlab="Status of the SIM",ylab="Days /the last call to callcenter",main="Days /the last call to callcenter with respect to the Status",col=palette)
