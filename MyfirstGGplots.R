library(datasauRus)
library(ggplot2)

unique(datasaurus_dozen$dataset)

datasaurus_dozen %>% 
  #filter(dataset=="dino") %>% 
  ggplot(aes(x=x, y=y, colour=dataset))+
  geom_point()+
  facet_wrap(~dataset)+
  theme_minimal()+
  theme(legend.position="none")
  

datasaurus_dozen %>% 
  #filter(dataset=="dino") %>% 
  group_by(dataset) %>% 
  summarise_all(mean)->
  dd_summary

datasaurus_dozen %>% 
  ggplot(aes(x=x, y=y, colour=dataset))+
  geom_point()+
  geom_point(data=dd_summary, colour="red")+
  geom_path()+
  facet_wrap(~dataset)+
  theme_minimal()+
  theme(legend.position="none")->
  dd_plot
  
#%+% special adding for pushign extra data to plots
dd_plot %+% sample_n(datasaurus_dozen,100) 


#Jitter is good to hide sensitive data.
ggplot()

  #gapminder can be done in r .
