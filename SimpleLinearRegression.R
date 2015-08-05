year <- c(2000 ,   2001  ,  2002  ,  2003 ,   2004)
rate <- c(9.34 ,   8.50  ,  7.62  ,  6.93  ,  6.60)

plot(year,rate,main="Commercial Banks Interest Rate for 4 Year Car Loan")

cor(year,rate)

#rate=(slope)year+(intercept)

fit <- lm(rate ~ year) # Linear model 

fit

attributes(fit)

#class(fit$coefficients[1])

predicted <- fit$coefficients[[2]]*year+fit$coefficients[[1]] # gives predicted interest rates 
#residuals(fit) fit$residuals

residuals = rate -predicted
plot(year,residuals) # plot(fit$residuals)

plot(year,rate,
     main="Commercial Banks Interest Rate for 4 Year Car Loan")
abline(fit)

summary(fit) # Gives summry of the fit
