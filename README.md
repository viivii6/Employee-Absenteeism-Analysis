# Employee Absenteeism Data Analysis for Driving Employee Incentives and Wellness
## 1. Project Overview
This project focuses on analyzing employee data along with their absenteeism data to design strategies for a **healthy bonus program** and drive **employee incentives towards their jobs**. The primary objective is to identify employees who are living a healthier lifestyle, understand absenteeism patterns, and provide actionable insights for HR to **boost productivity, reward performance, and promote well-being**.
The analysis leverages data from 3 tables containing **employee absenteeism data, reasons of absense data and compensation details** respectively to find out the employees qualified for the program,  an annual wage increase for non-smokers and a simple dashboard for HR to understand the absenteeism trends at work.
## 2. Purpose and Function
The purpose of this project is to:
* **Reward Healthy and Low Absenteeism Employees**: Identify employees with healthy habits and low absenteeism for qualifying them to a bonus program and driving  incentives of the work force.
* **Plan Budget for Non-Smoking Employees**: Calculate budget allocation for a wage increase for all the non-smoking employees.
* **Analyze Absenteeism Trends**: Determine seasonal patterns, reasons of absence, among others with a simple Power BI dashboard.
* **Promote Workplace Incentives and Wellness**: Provide data-driven recommendations for reducing absenteeism and improving work-life balance.
## **3. Tech Stack**
* **SQL (SQL Server)** – For data extraction, transformation, and analysis.
* **Data Categorization** - Categorization of the absenteeism data based on seasons and employee data based on health status and age categories.
* **Data Visualization (Power BI)** – For building a simple interactive dashboard to visualize absenteeism trends according to different metrics.
* **File Format** – .csv for the raw data, .sql for development, .sql for data validation and .pbix for the dashboard.
## **4. Key Features**
* **Joins and Data Blending:**
  * Combined multiple tables (`Absenteeism_at_work`, `Compensation`, `Reasons`) using Joins for holistic analysis.
* **Health and Low Absenteeism Based Filtering:**
  * Identified healthiest employees with low absenteeism using conditions like:
    * **Non-smokers, Non-drinkers**.
    * **BMI < 25**.
    * **Below-average absenteeism hours**.
* **Annual Compensation Calculation:**
  * Budget planning for incentives (e.g., **₹10,00,00,000 allocation at ₹70/hour (₹1,45,600/year) per non-smoking employee**).
* **Seasonal Absenteeism Trends:**
  * Categorization of months into **Summer, Rainy, Autumn, Winter, Spring** for pattern recognition.
* **BMI and Age Segmentation of Employees:**
  * Employees grouped into (according to BMI): **Underweight, Healthy, Overweight, Obese**.
  * Employees grouped into (according to Age): **Young-Aged, Middle-Aged, Old-Aged**.
* **Power BI Dashboard:**
  * Visual representation of **absenteeism rates by months and days of the week**, **count of all the reason of absence along with filteration provided by a seasons slicer and pie charts of categorized age group and BMI** among others.
## **5. Insights**
From the analysis, several key insights were derived:
* **The Average Absenteeism Hours**:
  * The main KPI is the average absenteeism time in hours of all the employee work force which was found to be **6.92 hours**.
* **Season With The Maximum Absenteeism**:
  * The season slicer shows us that the average absenteeism hours is the **most during Summer and Rainy Seasons** with values of **7.56 hours and 7.55 hours** respectively .
* **Lifestyle Influence**:
  * **Smokers and drinkers show higher absenteeism**; incentivizing healthy habits can improve attendance.
* **Age Category With The Maximun Absenteeism**:
  * **Middle-Aged Employees** along with a certain range of **Young-Aged Employees** like **33 and 28 Year-olds** respectively were found to be the one with the **maximum absence in hours**.
* **Month and Day With The Maximum Absenteeism**:
  * The months of **March and July** and the day of **Monday** saw **maximum number of absence**. As weekend approches, the number of absence is found to be decreasing.
* **Maximum Reason Of Absense**:
  * **Medical Consultation** was found to be the **maximum reason** why employees tend to take leaves.
* **Budget Utilization**:
  * Based on employee count, **a ₹10 crore budget can provide significant annual incentives for non-smoking employees**.
## **6. Solutions**
The following measures and solutions can be applied to decrease the average absenteeism in the upcoming year:-
* **Refreshments and better air conditioning can be provided in the workplace during Summer Seasons along with pickup facilities on certain days especially on Mondays can be provided during Rainy Seasons**.
* **Non-Smoking and Non-Drinking campaigns can be encouraged with the introduction of the healthy bonus program to facilitate the wellbeing and incentives of the employees**.
* **Most of the employees who are middle-aged and young-aged especially around the age of 28 and 33 can be made to take part in important projects and meetings mandatorily**.
* **Months of March and July, especially on Mondays can be chosen to conduct mandatory project meetings or even host some recreational events in the workplace to boost employee morale and incentives**.
* **A new medical department can be opened in the workplace to provide free medical consultation to the employees if required**.

