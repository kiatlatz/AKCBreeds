library(ggplot2)
library(ggthemes)

ggplot(breeds, aes(x=Weight..Avg., y=Averaged.Life.Expectancy))+
  geom_jitter(size=1.5, shape=3, aes(color=Group))+
  geom_line(stat="smooth",method = "lm",
            size = 1,
            linetype ="dashed",
            color="blue",
            alpha = 0.2)+
  xlab("Average Weight (in lbs)")+
  ylab("Average Life Expectancy (in years)")+
  annotate("text",
           x=11.50,
           y=17,
           label='Coton de Tulear',
           size=2.5,
           fontface='italic',
           family='serif',
           vjust=-1.2,
           hjust=.55)+
  annotate("text",
           x=175,
           y=10,
           label='Boerboel',
           size=2.5,
           fontface='italic',
           family='serif',
           vjust=-1,
           hjust=.7)+
  annotate("text",
           x=175,
           y=8,
           label='Mastiff',
           size=2.5,
           fontface='italic',
           family='serif',
           vjust=-1,
           hjust=.7)+
  annotate("text",
           x=120,
           y=6.5,
           label='Dogue de Bordeaux',
           size=2.5,
           fontface='italic',
           family='serif',
           vjust=2,
           hjust=.5)+
  annotate("text",
           x=112.5,
           y=7,
           label='Irish Wolfhound',
           size=2.5,
           fontface='italic',
           family='serif',
           vjust=-1,
           hjust=.5)+
  annotate("text",
           x=22.5,
           y=17,
           label='Pyrenean Shepherd',
           size=2.5,
           fontface='italic',
           family='serif',
           hjust=-.1)+
  ggtitle("Average Weight and Life Expectancy of AKC-Registered Breeds")+
  theme(plot.title = element_text(hjust = 0.5))