# 1 - Check the structure of titanic

str(titanic)



# 2 - Bar plot to analyse the distribution of male and female across classes
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge")



# 3 - Bar plot to analyse additional info like who survived and who did not
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge") + facet_grid(.~ Survived)



# 4 - Define an object for position jitterdodge, to use below

posn.jd <- position_jitterdodge(0.5, 0, 0.6)



# 5 - Scatter plot to analyse the age of who survived and who did not across the classes
ggplot(titanic, aes(x = Pclass, y =Age, color = Sex)) +
  geom_point(position = posn.jd, size = 3, alpha = 0.5) + facet_grid(.~ Survived)