# Reproducible Research Exercise
Optional exercise from Week 1 of Reproducible Research
Author: Samuel Chan
Data Source: Provider Utilization and Payment Data Inpatient Public Use File,  Centers for Medicare & Medicaid Services (CMS)

## Review Criteria
To practice the plotting techniques we have learned so far, we will be making a graphic that explores relationships between variables. This practice is useful since we will later cover creating reproducible graphics in this class. We will be looking at a subset of a United States medical expenditures dataset with information on costs for different medical conditions and in different areas of the country.

We should do the following:

1. Make a plot that answers the question: what is the relationship between mean covered charges (Average.Covered.Charges) and mean total payments (Average.Total.Payments) in New York?
2. Make a plot (possibly multi-panel) that answers the question: how does the relationship between mean covered charges (Average.Covered.Charges) and mean total payments (Average.Total.Payments) vary by medical condition (DRG.Definition) and the state in which care was received (Provider.State)?

## The R Script Itself
The R script is in 2 sections, each addressing one of the requirement of the coursework
Pre-requisites: 
1. The ggplot2 library
2. The dataset used in this exercise, saved as "medicare.csv" in the same (main) directory as the R script itself

### Section 1
- We first load the ggplot2 library and read in the csv file
- Create a subset, taking only data pertaining to NY state
- Use ggplot to create our scatterplot and add a linear regression line to it, as well as the labels and title
- Save it as "plot1.pdf"

### Section 2
- We are tasked to explore the relationship between mean covered charges and mean total payments (Average.Covered.Charges and Average.Total.Payments, respectively, in the dataset) by medical condition and also by the state in which the care was received. There are a few options or design choices that could all serve this purpose. 
- We created a scatterplot as part of the exploratory process. This is not used in the final output
- We created a boxplot and the a variable ("labels") to be mapped into the facet grid later. We make smart use of the labs() and theme() function to give some style and aesthetic to our chart
- Save it as "plot2.pdf", specifying scale=2 to have the image scaled accordingly

