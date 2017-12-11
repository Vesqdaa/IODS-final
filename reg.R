fullmodel <- lm(data = d, formula = Grade ~.)
chosenmodel <- step(fullmodel, direction = "backward", k = log(nrow(d)), trace=FALSE) 
summary(chosenmodel)

