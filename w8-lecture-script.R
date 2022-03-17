x <- c(8,2,5,7,4,6,3,1)
y <- c(622,270,466,701,124,507,382,278)
cor(x, y, method = 'pearson')
cor(x, y, method = 'spearman')

cor.test(x, y, method = 'pearson')

fake.data <- data.frame(x = c(8,2,5,7,4,6,3,1), 
                        y = c(622, 270, 466, 701, 124, 507, 382, 278))
cor.test(~ x + y, method = 'pearson', data = fake.data)

library(dplyr)
fake.data %>%
  cor.test(~ x + y, method = 'pearson', data = .)
