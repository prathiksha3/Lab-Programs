x = c(1, 2, 3, 4, 5)
y = c(2, 4, 6, 8, 10)
# Scatter Plot
plot(x, y, type = "p", col = "blue", pch = 16, xlab = "X-axis", ylab = "Y-axis", main = "Scatter
Plot Example")
# Line Plot
plot(x, y, type = "l", col = "red", lwd = 2, xlab = "X-axis", ylab = "Y-axis", main = "Line Plot
Example")
# Bar Plot
barplot(y, names.arg = x, col = "green", xlab = "X-axis", ylab = "Y-axis", main = "Bar Plot
Example")
# Histogram
hist(y, col = "purple", xlab = "X-axis", ylab = "Frequency", main = "Histogram Example")
