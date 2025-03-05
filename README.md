# Data Portfolio: Clean Data using MySQL 
![excel-to-powerbi-animated-diagram](assets/images/sqlaimge.png)

# Table of contents 

- [Objective](#objective)
- [Data Source](#data-source)
- [Stages](#stages)
- [Data Cleaning Process](#Data-Cleaning-Process)
  - [Removing Duplicates](#Removing-Duplicates)
  - [Fixing Errors](#Fixing-Errors)
  - [Missing Values](#Missing-Values)
  - [Removing Unnecessary Data](#Removing-Unnecessary-Data)
- [Development](#development)
  - [Pseudocode](#pseudocode)
  - [Data Exploration Notes](#Data-Exploration-Notes)
  - [Data Cleaning](#data-cleaning)
  - [Transform the Data](#transform-the-data)
  - [Create the SQL View](#create-the-sql-view)
- [Testing](#testing)
  - [Data Quality Tests](#data-quality-tests)
- [Visualization](#visualization)
  - [Results](#results)
  - [DAX Measures](#dax-measures)



# Objective 

## What is the key pain point?

 The data analysis team wants to identify the most significant global layoffs to analyze their impact on the job market and industry trends

- What is the ideal solution?

To create a dashboard that provides insights into global layoffs data including:

- Total number of employees laid off
-  Layoff percentage relative to total employees
-  Company name and industry
-  Geographic location
-  Company funding amount

 This will help the analysis team make informed decisions about market trends and the impact of layoffs on various industries

# User Story
- As a data analyst I want to use an analytical dashboard to understand global layoff trends, so that I can identify the most affected industries and the companies with the highest
  layoff rates
- This will help me generate data-driven reports and recommendations

# Data Source
- The dataset is sourced from Kaggle, which includes information on layoffs across various industries and locations worldwide
- The dataset contains key attributes such as:
  - Company Name (e.g., Loom, Lokalise, Loft)
  - Location (City and Country)
  - Industry (e.g., Tech, Retail, Real Estate)
  -Total Employees Laid Off
  - Layoff Percentage (relative to the company's workforce)
  - Layoff Date
  - Company Stage (e.g., Series A, B, C, Acquired)
  - Total Funding Raised (in millions)

# Data Cleaning Process

Before analyzing the data, it is essential to clean it to ensure accuracy  The process includes the following steps:
# 1. Identifying and Removing Duplicates
- We used an SQL query to detect duplicate records based on company name, location, industry, and number of employees laid off
- Duplicates were removed to ensure data accuracy
# 2. Standardizing and Fixing Errors
- Used TRIM() to remove extra spaces from text fields
- Standardized industry names to avoid inconsistencies, such as unifying variations of "Crypto" into a single standardized value
- Converted the layoff date column from text format to a proper date format using STR_TO_DATE()
# 3. Handling Missing Values
- Some fields, such as total_laid_off and percentage_laid_off, contain missing values, but they are essential for analysis, so we decided to keep them as they are
- Rows with completely missing essential values were removed to maintain data reliability
# 4. Removing Unnecessary Data
- Dropped irrelevant columns like row_num, which was used during duplicate processing but is not needed in the final analysis
- With these steps completed, we now have clean and structured data, ready to build an analytical dashboard to extract insights on global layoffs


# Development

 # Pseudocode

- What's the general approach in creating this solution from start to finish ?
1. Get the data – Download the dataset from Kaggle.
2. Explore the data in Excel – Identify inconsistencies, missing values, and anomalies
3. Load the data into SQL Server – Store the dataset in a relational database for structured querying
4. Clean the data with SQL – Remove duplicates, standardize values, and fix data types
5. Test the data with SQL – Verify accuracy, check constraints, and validate transformations
6. Visualize the data in Power BI – Create dashboards to analyze trends and insights
7. Generate the findings based on insights – Document key takeaways and trends
8. Write the documentation + commentary – Summarize methodology, challenges, and outcomes
9. Publish the data to GitHub Pages – Make the project publicly accessible

# Data Exploration Notes
- What are your initial observations with this dataset ?
  - The dataset contains company layoff data, with at least 4 essential columns for analysis
  - Some columns contain NULL values, particularly in layoff percentages and funding amounts
  - Duplicate records exist, especially for companies with multiple layoff events
  - Industry categories are inconsistent (e.g., "Crypto Startup" vs. "Crypto")
  - Date fields are stored as text, requiring conversion to a proper date format
  - There are irrelevant columns that are not necessary for our analysis
 
  # Data Cleaning
- What do we expect the clean data to look like ?
-The dataset should be structured and ready for analysis, following these constraints:
  - ✅ Only relevant columns should be retained
  - ✅ All data types should be appropriate for the contents of each column
  - ✅ No column should contain NULL values unless necessary


