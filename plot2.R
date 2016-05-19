dataFolderAddress<-"/Users/shuai_mac/Downloads/project2-data/"
NEI <- readRDS(paste0(dataFolderAddress,"summarySCC_PM25.rds"))
SCC <- readRDS(paste0(dataFolderAddress,"Source_Classification_Code.rds"))
ID<-c("fips","SCC","Pollutant","type","year")
library(reshape2)
NEIMelt<-melt(NEI,id=ID)
library(dplyr)
NEIMeltBal<-NEIMelt[NEIMelt$fips=="24510",]
timeCitySum<-dcast(NEIMelt,year~variable,sum)
