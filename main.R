filtered_data <- subset(CO2_Emissions_Canada, Make == "AUDI" | Make == "BMW")

# Histogram
hist(filtered_data$`CO2 Emissions(g/km)`, col ="blue",border = "black",freq = TRUE, main = "Histogram of Audi and BMW Emission",xlab ="Co2 Emission")

mean_co2 <- mean(filtered_data$`CO2 Emissions(g/km)`)
sd_co2 <- sd(filtered_data$`CO2 Emissions(g/km)`)

curve(dnorm(x, mean = mean_co2, sd = sd_co2) * length(filtered_data$`CO2 Emissions(g/km)`) * 
        diff(hist(filtered_data$`CO2 Emissions(g/km)`, plot = FALSE)$breaks[1:2]), 
        col = "red", 
        lwd = 2, 
        add = TRUE)

# Boxplot
boxplot(filtered_data$`CO2 Emissions(g/km)` ~ filtered_data$Make,
        col = c("lightblue", "lightgreen"),
        main = "Boxplot of CO2 Emissions by Make",
        xlab = "Make",
        ylab = "CO2 Emissions (g/km)",
        outline = TRUE, 
        border = "black")
