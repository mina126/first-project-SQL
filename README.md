# Data Portfolio: Clean Data using MySQL 
![excel-to-powerbi-animated-diagram](assets/images/sqlaimge.png)

# Table of contents 

- [Objective](#objective)
- [Data Source](#data-source)
- [Stages](#stages)
- [Design](#design)
  - [Mockup](#mockup)
  - [Tools](#tools)
- [Development](#development)
  - [Pseudocode](#pseudocode)
  - [Data Exploration](#data-exploration)
  - [Data Cleaning](#data-cleaning)
  - [Transform the Data](#transform-the-data)
  - [Create the SQL View](#create-the-sql-view)
- [Testing](#testing)
  - [Data Quality Tests](#data-quality-tests)
- [Visualization](#visualization)
  - [Results](#results)
  - [DAX Measures](#dax-measures)
- [Analysis](#analysis)
  - [Findings](#findings)
  - [Validation](#validation)
  - [Discovery](#discovery)
- [Recommendations](#recommendations)
  - [Potential ROI](#potential-roi)
  - [Potential Courses of Actions](#potential-courses-of-actions)
- [Conclusion](#conclusion)




# Objective 

##What is the key pain point?

-The data analysis team wants to identify the most significant global layoffs to analyze their impact on the job market and industry trends.

-What is the ideal solution?

-To create a dashboard that provides insights into global layoffs data, including:

-Total number of employees laid off

-Layoff percentage relative to total employees

-Company name and industry

-Geographic location

-Company funding amount

-This will help the analysis team make informed decisions about market trends and the impact of layoffs on various industries.

##User Story

As a data analyst, I want to use an analytical dashboard to understand global layoff trends, so that I can identify the most affected industries and the companies with the highest layoff rates. This will help me generate data-driven reports and recommendations.

##Data Source

What data is needed to achieve our objective?

We need data that includes:

Company names

Geographic location (country/city)

Industry sector

Total number of employees laid off

Layoff percentage relative to total employees

Layoff date

Company funding amount

##Data Cleaning Process

Before analyzing the data, it is essential to clean it to ensure accuracy. The process includes the following steps:

1. Identifying and Removing Duplicates

We used an SQL query to detect duplicate records based on company name, location, industry, and number of employees laid off.

Duplicates were removed to ensure data accuracy.

2. Standardizing and Fixing Errors

Used TRIM() to remove extra spaces from text fields.

Standardized industry names to avoid inconsistencies, such as unifying variations of "Crypto" into a single standardized value.

Converted the layoff date column from text format to a proper date format using STR_TO_DATE().

3. Handling Missing Values

Some fields, such as total_laid_off and percentage_laid_off, contain missing values, but they are essential for analysis, so we decided to keep them as they are.

Rows with completely missing essential values were removed to maintain data reliability.

4. Removing Unnecessary Data

Dropped irrelevant columns like row_num, which was used during duplicate processing but is not needed in the final analysis.

With these steps completed, we now have clean and structured data, ready to build an analytical dashboard to extract insights on global layoffs.


