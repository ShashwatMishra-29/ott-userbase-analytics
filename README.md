OTT Userbase Analytics

This project analyzes a streaming platform’s user base to understand revenue patterns, subscription behavior, device preferences, and regional trends. It also includes a machine learning model built to predict a user’s subscription type using demographic and usage features.

All analysis is done using Python, MySQL, and Machine Learning, supported by saved visualizations and reproducible notebooks.

Project Overview

The goal of the project is to demonstrate end-to-end analytics capability:

Data cleaning and preprocessing

Exploratory data analysis and visualizations

SQL-based business analysis

Feature engineering

Building a prediction model for subscription type

Saving model artifacts and evaluation outputs

Organizing a complete, production-like project structure

Dataset

Located in:

data/netflix_userbase.csv


Main fields include:
user_id, subscription_type, monthly_revenue, join_date, last_payment_date,
country, age, gender, device, plan_duration.

The dataset contains 2,500 user records from various countries and device types.

Notebook 1 — Data Cleaning & EDA

Notebook path:

notebooks/ott_userbase_data.ipynb


Key steps performed:

Cleaned column names and removed whitespace

Converted date fields

Created join_year_month for monthly analysis

Analyzed subscription mix and revenue trends

Visualized device usage, age distribution, and new joins over time

Visuals saved in the visuals/ folder:

monthly_users.png

revenue_by_subscription.png

device_distribution.png

age_distribution.png

Notebook 2 — Machine Learning Model

Notebook path:

notebooks/subscription_prediction_model.ipynb

Model

A RandomForestClassifier was trained to predict the subscription type (Basic, Standard, Premium).

Preprocessing

OneHotEncoder for categorical variables

Passthrough transformation for numeric variables

Combined using ColumnTransformer and a full pipeline

Outputs

The following files are generated and saved:

confusion_matrix.png

confusion_matrix_heatmap.png

feature_importance.png

predictions_test_set.csv

models/ott_subscription_model_rf.joblib

The model was also exported along with a metadata file (model_info.txt).

SQL Analysis

SQL scripts are stored in:

sql/schema.sql
sql/analysis_queries.sql


The queries include:

Revenue analysis by subscription tier

Device-wise user count and revenue

Country-level revenue contributions

Monthly growth trends

Gender segmentation

Age group segmentation

Plan duration breakdown

These queries replicate typical business analytics tasks performed in SQL-driven environments.

How to Run the Project
Install dependencies:
pip install -r requirements.txt

Run the EDA notebook:
notebooks/ott_userbase_data.ipynb

Run the ML model notebook:
notebooks/subscription_prediction_model.ipynb

View visual outputs:

All plots are saved in the visuals/ directory.

SQL Execution:

Run schema.sql and analysis_queries.sql inside MySQL Workbench.

Key Insights (Example Summary)

Replace these with your actual results after reviewing your notebook outputs.

Premium users generated the highest share of revenue.

Smart TV and Laptop users were more likely to choose higher-tier plans.

Strong user concentrations were seen in the US, UK, and Canada.

New user signups increase around mid-year and late-year periods.

The RandomForest classifier achieved XX% accuracy (update with real number).

Future Improvements

Add churn prediction

Develop a Power BI dashboard using the same dataset

Hyperparameter tuning for the ML model

Add time-series forecasting for revenue and user growth

Build an API wrapper for real-time prediction

Author

Shashwat Mishra
GitHub: https://github.com/ShashwatMishra-29
