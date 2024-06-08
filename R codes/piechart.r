data = c(23, 56, 20, 63)
labels = c("Mumbai", "Pune", "Chennai", "Bangalore")
piepercent= round(100 * data / sum(data), 1)
# Plot the 2D pie chart
pie(data, labels = piepercent, main = "City pie chart", col = rainbow(length(data)))
legend("topright", c("Mumbai", "Pune", "Chennai", "Bangalore"), cex=0.5,
fill=rainbow(length(data)))
# Get the library
library(plotrix)
# Plot the 3D pie chart
pie3D(data, labels = piepercent, main = "City pie chart", col = rainbow(length(data)))
legend("topright", c("Mumbai", "Pune", "Chennai", "Bangalore"), cex = 0.5, 
fill=rainbow(length(data)))
