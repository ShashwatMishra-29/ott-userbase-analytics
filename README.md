📺 OTT Userbase Analytics

This project explores user behavior on an OTT (streaming) platform using Python, SQL, and a Machine Learning model built to predict subscription type.
It covers data cleaning, exploration, SQL-based business analysis, feature engineering, visualizations, and an end-to-end modeling pipeline.

1. Project Summary

This analysis focuses on answering key business questions:

How many users join each month?

Which plans generate the highest revenue?

Which devices are most popular?

How do age, country, and device affect subscription choice?

Can we predict what plan a user will choose?

The project is structured as a real-world data analytics workflow with clean code, organized folders, and saved outputs.

2. Dataset Info

Location:

data/netflix_userbase.csv


Contains user-level information:

User ID

Subscription Type

Monthly Revenue

Join Date & Last Payment Date

Country, Age, Gender

Device Type

Plan Duration

3. Notebook 1 — Data Cleaning & EDA

Path:

notebooks/01_data_cleaning_eda.ipynb


Key tasks:

Cleaned column names

Fixed date formats

Created new time-based features

Explored revenue trends

Device and age distribution

Monthly user growth

Saved visuals include:

monthly_users.png

revenue_by_subscription.png

device_distribution.png

age_distribution.png

All in the visuals/ folder.

4. Notebook 2 — ML Model (Subscription Prediction)

Path:

notebooks/02_subscription_prediction_model.ipynb

Model

A RandomForestClassifier was trained to classify users into Basic, Standard, or Premium subscriptions.

Methodology:

Train/Test split

OneHotEncoder for categorical features

Pipeline containing preprocessing + model

Feature importance analysis

Confusion matrix evaluation

Predictions exported to CSV

Model Artifacts:

models/ott_subscription_model_rf.joblib
models/model_info.txt


Visual Outputs (saved):

confusion_matrix.png

confusion_matrix_heatmap.png

feature_importance.png

predictions_test_set.csv

5. SQL Analysis

SQL scripts:

sql/schema.sql
sql/analysis_queries.sql


Includes:

Monthly user signups

Revenue by plan

Device-by-revenue

Country-level contributions

Age group segmentation

Plan duration analysis

These queries reflect typical business insights tasks in real analytics roles.

6. How to Run the Project
Install dependencies:
pip install -r requirements.txt

Run Notebooks:
notebooks/01_data_cleaning_eda.ipynb
notebooks/02_subscription_prediction_model.ipynb

SQL:

Run both .sql files in MySQL Workbench.

Visuals:

All charts are saved in the visuals/ folder.

7. Key Findings (Example — replace with your numbers)

Fill this after checking your notebook results.

Premium users contribute the largest portion of total revenue

Laptop & Smart TV users show higher ARPU

Strong user concentration: US, UK, Canada

Significant growth in Nov–Dec months

Model achieved an accuracy of XX% (replace with real value)

8. Improvements & Next Steps

Build Power BI dashboard

Hyperparameter tuning

Add churn prediction

Deploy model via API

Create a web dashboard version

9. Author

Shashwat Mishra
GitHub: https://github.com/ShashwatMishra-29

Author

Shashwat Mishra
GitHub: https://github.com/ShashwatMishra-29
