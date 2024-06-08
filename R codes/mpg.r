library(lattice)# Create a bar plot of average MPG by number of cylindersavg_mpg_by_cyl = tapply(mtcars$mpg, mtcars$cyl, mean)bar_plot = barchart(avg_mpg_by_cyl, main = "Average MPG by Number of Cylinders",xlab = "Cylinders", ylab = "Average MPG", col = "orange")print(bar_plot)# Create a scatter plot of MPG vs Horsepowerscatter_plot = xyplot(mpg ~ hp, data = mtcars, pch = 16, col = "blue", main = "Scatter Plot 
of MPG vs. Horsepower", xlab = "Horsepower", ylab = "MPG") print(scatter_plot)# Create a histogram of MPG valueshistogram_plot = histogram (~ mpg, data = mtcars, main = "Histogram of MPG", xlab = 
"MPG", ylab = "Frequency", col = "green") 
print(histogram_plot)# Create a density plot of MPG valuesdensity_plot <- densityplot(~ mpg, data = mtcars, main = "Density Plot of MPG", xlab = 
"MPG", ylab = "Density", col = "purple") 
print(density_plot)
