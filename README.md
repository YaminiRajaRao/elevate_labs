# Netflix Titles Data Cleaning

## Description

This notebook focuses on **cleaning and standardizing a Netflix titles dataset** to prepare it for further analysis or machine learning applications. The main dataset used is `netflix_titles1.csv`, which is loaded from Google Drive.

## Steps Performed

- **Load the dataset** using pandas.
- **Standardize all column headers** (convert to lowercase, replace spaces with underscores).
- **Handle missing values**: Remove all rows with null values from the dataset.
- **Remove duplicate rows** (if any).
- **Standardize the `country` column** for consistency.
- **Format date columns** (`date_added` and `release_year`) uniformly in the `dd-mm-yyyy` format.
- **Convert date columns to datetime types** for proper data handling and analysis.
- **Save the cleaned dataset** as `cleaned_data.csv` for later use.

## Output

- A fully cleaned `.csv` file named `cleaned_data.csv` with standardized column names and consistent, complete data, ready for subsequent exploration or modeling.
