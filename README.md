# Employee Data Analysis for Driving Employee Incentives and Wellness
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
* **SQL(SQL Server)** – For data extraction, transformation, and analysis.
* **Data Categorization** - Categorization of the absenteeism data based on seasons and employee data based on health status and age categories.
* **Power BI** – For building a simple interactive dashboard to visualize absenteeism trends according to different metrics.
* **File Format** – .csv for the raw data, .sql for development, .sql for data validation and .pbix for the dashboard.
## **4. Key Features**

* **Joins and Data Blending**:

  * Combined multiple tables (`Absenteeism_at_work`, `Compensation`, `Reasons`) for holistic analysis.
* **Health-Based Filtering**:

  * Identify healthiest employees using conditions like:

    * Non-smokers, Non-drinkers
    * BMI < 25
    * Below-average absenteeism hours
* **Compensation Analysis**:

  * Budget planning for incentives (e.g., ₹10,00,00,000 allocation at ₹70/hour per non-smoking employee).
* **Seasonal Absenteeism Trends**:

  * Categorization of months into **Summer, Rainy, Autumn, Winter, Spring** for pattern recognition.
* **BMI and Age Segmentation**:

  * BMI grouped into: Underweight, Healthy, Overweight, Obese.
  * Age grouped into: Young-Aged, Middle-Aged, Old-Aged.
* **Power BI Dashboard**:

  * Visual representation of absenteeism rates, reasons, seasons, and health stats.

---

## **5. Insights and Solutions**

From the analysis, several key insights were derived:

* **Top Performers for Incentives**:

  * Employees who are non-smokers, non-drinkers, with healthy BMI and low absenteeism.
* **Wellness Strategies**:

  * Programs for overweight and obese employees to reduce health-related absenteeism.
* **Seasonal Impact**:

  * Higher absenteeism during **Winter and Rainy seasons** due to health issues or weather conditions.
* **Lifestyle Influence**:

  * Smokers and drinkers show higher absenteeism; incentivizing healthy habits can improve attendance.
* **Budget Utilization**:

  * Based on employee count, a ₹10 crore budget can provide significant annual incentives for non-smoking employees.

---

### **SQL Snippets Used**

```sql
-- Join all relevant tables
SELECT * FROM Absenteeism_at_work a
LEFT JOIN compensation c ON a.ID = c.ID
LEFT JOIN Reasons r ON a.Reason_for_absence = r.Number;

-- Identify healthiest employees
SELECT * FROM Absenteeism_at_work
WHERE Social_drinker = 0 AND Social_smoker = 0 
AND Body_mass_index < 25
AND Absenteeism_time_in_hours < (
    SELECT AVG(Absenteeism_time_in_hours) FROM Absenteeism_at_work
);

-- Budget allocation for non-smokers
SELECT COUNT(*) AS non_smokers FROM Absenteeism_at_work
WHERE Social_smoker = 0;
```

---

✅ **Bonus:** The Power BI dashboard provides a **visual story** of employee health vs absenteeism and highlights key trends for decision-making.

---

Do you want me to **also include screenshots of the Power BI dashboard sections with their descriptions in the README** (like absenteeism by season, BMI category analysis, incentive distribution), or should I keep it text-based only?

