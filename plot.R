## Load the necessary libraries
library(ggplot2)

## Read the file from our main directory 
medicare <- read.csv("medicare.csv", header=T, sep=",")

## Make the cutoff for scientific notation only for numbers larger than 1e5
options(scipen=6) 

# ==== Question 1 ==== #
## Make a plot that answers the question: what is the relationship between 
## mean covered charges (Average.Covered.Charges) and mean total payments (Average.Total.Payments) 
## in New York?

## Subset new york data from the original dataset
ny <- subset(medicare, Provider.State == "NY")

## Use ggplot to plot a few charts
ggplot(ny, aes(x= Average.Covered.Charges, y=Average.Total.Payments)) + 
  geom_point() + stat_smooth(method="lm") + 
  labs(x= "Avg. (Mean) Covered Charges", y = "Avg. (Mean) Total Payments", title = "Mean covered charges vs. Mean total payments in New York", caption = "(based on data from The Centers for Medicare and Medicaid Services)")
## Save our charts to plot1 using ggsave
ggsave("plot1.pdf")

# ==== Question 2 ==== #

## Make a plot (possibly multi-panel) that answers the question: 
## how does the relationship between mean covered charges (Average.Covered.Charges) and 
## mean total payments (Average.Total.Payments) vary by medical condition (DRG.Definition) 
## and the state in which care was received (Provider.State)?


# Make a scatterplot
## We won't actually export the scatterplot in the final output, but it's a viable option
## and a good exercise
scatter <- ggplot(medicare, aes(x = log10(Average.Covered.Charges), y = log10(Average.Total.Payments), color = DRG.Definition)) + 
  geom_point(alpha=0.3) + facet_grid(~Provider.State) + 
  theme(legend.position = "bottom") 

# Make a boxplot
## We choose boxplot instead of the scatterplot because it presents a clearer comparison 
## and the summary statistics is arguably more useful then to have all data points plotted out
## from an ease-of-interpretation point of view

# Create labels for mapping in  our facet grid later
labels <- c("CA" = "California", "FL" = "Florida", "IL" = "Illinois","NY" = "New York","PA" = "Pennsylvania", "TX" = "Texas", "194 - SIMPLE PNEUMONIA & PLEURISY W CC" = "194", "292 - HEART FAILURE & SHOCK W CC" = "292", "392 - ESOPHAGITIS, GASTROENT & MISC DIGEST DISORDERS W/O MCC" = "392", "641 - MISC DISORDERS OF NUTRITION,METABOLISM,FLUIDS/ELECTROLYTES W/O MCC" = "641", "690 - KIDNEY & URINARY TRACT INFECTIONS W/O MCC" = "690", "871 - SEPTICEMIA OR SEVERE SEPSIS W/O MV 96+ HOURS W MCC" = "871")

ggplot(medicare, aes(x = log10(Average.Covered.Charges), y = log10(Average.Total.Payments), color = DRG.Definition)) + 
  geom_boxplot(alpha=0.3) + facet_grid(DRG.Definition~Provider.State, labeller=as_labeller(labels)) +
  labs(x = "Average Covered Charges (log10)", y="Average.Total.Payments (log10)", title="Mean Covered Charges vs Mean Total Payments by Condition & State", subtitle="Exploring the relationship between mean covered charges and mean total payments by medical condition and the state in which care was received") +
  theme(legend.position = "bottom", text=element_text(size=6)) +
  theme(plot.title=element_text(size=12)) + theme(plot.margin=unit(c(1,1,1.5,1.2),"cm")) +
  theme(legend.text=element_text(size=9))

ggsave("plot2.pdf", width=7, height=5, units="in", scale=2)