#I always import these just to be on the safe side
library(dplyr)
library(tidyr)
library(readr)
library(ggplot2)
library(ggthemes)


#Dot plot of terrier average weights- model for what function will include
terrierwtdotplot<-ggplot(terrier, aes(x=Weight..Avg., y=Name))+geom_point()
terrierwtdotplot+ggtitle("Average Weights of AKC-Registered Terrier Breeds")+xlab("Avg. Weight (lbs)")+ylab("Breed Name")+geom_text(aes(label = Weight..Avg.), size = 1.5, hjust=-1)

#Function to create a Cleveland Dot Plot for Average Weights on x-axis and breed names on y-axis.
#Inputs: desired plot name, chosen data set, and title of graph
dotplotwt<- function(plotname, datasetpick, title) {
  plotname<-ggplot(datasetpick, aes(x=Weight..Avg., y=Name))+
    geom_point(shape=15, size=2.5)+
    ggtitle(title)+
    xlab("Average Weight (lbs)")+
    ylab("Breed Name")+
    geom_text(aes(label = Weight..Avg.), size = 3, hjust=2)+
    scale_y_discrete(limits=rev)+
    theme(plot.title = element_text(hjust = 0.5))+
    theme_clean()
}   

#Test run on sporting breeds to check function
sportingwtdotplot<-dotplotwt(sportingwtdotplot, sporting, "Average Weights of AKC-Registered Sporting Breeds")
sportingwtdotplot

nonsportingwtdotplot<-dotplotwt(nonsportingwtdotplot, nonsporting, "Average Weights of AKC-Registered Non-Sporting Breeds")
nonsportingwtdotplot

africanwtdotplot<-dotplotwt(africanwtdotplot, african, "Average Weights of African Breeds of AKC-Registered Dogs")
africanwtdotplot
toywtdotplot<-dotplotwt(toywtdotplot, toy, "Average Weights of AKC-Registered Toy Breeds")
toywtdotplot
