filtered_data <- subset(mydataset, Make == "AUDI" | Make == "BMW")

hist(filtered_data$`CO2 Emissions(g/km)`, col ="blue",border = "black",freq = TRUE, main = "Histogram of Audi and BMW Emission",xlab ="Co2 Emission")
