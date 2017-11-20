library(ggplot2)
library(plyr)
library(dplyr)

Pokemon <- read_csv("~/Documents/Data_science_Club/Pokemon.csv")

max(Pokemon$Total)
# is.na(Pokemon$Total)
summary(Pokemon)

#colors that do with the pokemon types
colors <- c("#593420","#080c26","#7d8228", "#e2dc2f","#fcdefb","#662714","#c91f01",
            "#d0edef","#7f7682","#2d6633","#5b5550","#8dd9f4",
            "#e0e0e0","#126347","#4a116b","#332f28","#bababa","#203bc1")

#Number of Pokemon per Type 1
ggplot(Pokemon,aes(x=Pokemon$`Type 1`,fill=Pokemon$`Type 1`)) +
  geom_histogram(stat="count",color="black") +
  scale_fill_manual(values=as.character(colors)) +
  labs(title="Number of Pokemon per Type 1",x="Type",y="Count")

# Number of Pokemon per Type 2 (w/ NA)
ggplot(Pokemon,aes(x=Pokemon$`Type 2`,fill=Pokemon$`Type 2`)) +
  geom_histogram(stat="count",color="black") +
  scale_fill_manual(values=as.character(colors)) +
  labs(title="Number of Pokemon per Type 2 (w/ NA)",x="Type",y="Count")

Pokemon2 <- na.omit(Pokemon)

# Number of Pokemon per Type 2 w/o NA
ggplot(Pokemon2,aes(x=Pokemon2$`Type 2`,fill=Pokemon2$`Type 2`)) +
  geom_histogram(stat="count",color="black") +
  scale_fill_manual(values=as.character(colors)) +
  labs(title="Number of Pokemon per Type 2 w/o NA",x="Type",y="Count")

