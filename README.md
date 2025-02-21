# Data Analyst SQL Project: Layoff Analysis

## Project Overview

This project involves performing data processing, filtering, analyzing, and generating insights using SQL on a dataset of company layoffs. The dataset includes information on layoffs across various industries, locations, and company stages.

## Dataset

The dataset used for this analysis contains the following columns:
- `company`: Name of the company.
- `location`: Location of the company.
- `industry`: Industry in which the company operates.
- `total_laid_off`: Number of employees laid off.
- `percentage_laid_off`: Percentage of the total workforce laid off.
- `date`: Date of the layoff announcement.
- `stage`: Stage of the company (e.g., Post-IPO, Series B, etc.).
- `country`: Country where the company is located.
- `funds_raised_millions`: Funds raised by the company in millions.

## Data Cleaning

The data was cleaned by handling missing values and converting data types where necessary. Key steps included:
- Filling missing values in `industry` and `stage` columns with 'Unknown'.
- Dropping rows with missing values in `total_laid_off` and `percentage_laid_off`.
- Converting the `date` column to datetime format.

## Exploratory Data Analysis (EDA)

The following analyses were performed:

1. **Distribution of Layoffs by Industry**: Identified the most affected industries.
2. **Distribution of Layoffs by Location**: Highlighted locations with the highest number of layoffs.
3. **Relationship between Funds Raised and Number of Layoffs**: Explored the correlation between funds raised and layoffs.
4. **Trend of Layoffs Over Time**: Analyzed the trend of layoffs over time.
5. **Percentage of Layoffs by Company Stage**: Examined layoff percentages across different company stages.

## Insights

- The technology and media industries are most affected by layoffs.
- Major tech hubs like the San Francisco Bay Area have the highest frequency of layoffs.
- No clear correlation between funds raised and number of layoffs.
- Periodic peaks in layoffs over time suggest economic influences.
- Companies at the "Post-IPO" stage have a higher average percentage of layoffs.

![](https://github.com/vedantbhatiaa/SQL_DataAnalysis_Project-/blob/main/logo3.png)

![](https://github.com/vedantbhatiaa/SQL_DataAnalysis_Project-/blob/main/logo4.png)



## Conclusion

This analysis provided valuable insights into the dynamics of layoffs, highlighting the industries, locations, and company stages most affected. The project demonstrated the effectiveness of SQL in data processing, filtering, and generating meaningful insights.

## Repository Structure

- `data/`: Contains the dataset file.
- `notebooks/`: Jupyter notebooks used for data cleaning and analysis.
- `scripts/`: SQL scripts used for data processing and analysis.
- `README.md`: Project overview and details.

## How to Use

1. Clone the repository.
2. Access the dataset in the `data/` folder.
3. Run the analysis using the notebooks and scripts provided.


## Acknowledgements

Special thanks to the contributors and data providers for making this project possible.
