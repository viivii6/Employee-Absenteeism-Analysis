---create joins
select * from Absenteeism_at_work a
left join compensation c
ON a.ID= c.ID 
left join Reasons r
ON a.Reason_for_absence = r.Number;

---find the healthiest employee for bonus
select * from Absenteeism_at_work
where Social_drinker = 0 and Social_smoker=0 and Body_mass_index < 25 and 
Absenteeism_time_in_hours <(select AVG(Absenteeism_time_in_hours) from Absenteeism_at_work)

---compensation rate increase for non-smokers/budget 10,00,00,000 so 70 per hour/ 1,45,600 rs per annum for each non-smoking employee
select count(*) as non_smokers from Absenteeism_at_work
where Social_smoker =0

---optimized query
select a.ID, r.Reason, a.Month_of_absence, 
CASE
WHEN Month_of_absence IN (4,5,6) Then 'Summer'
WHEN Month_of_absence IN (7,8,9) Then 'Rainy'
WHEN Month_of_absence IN (10,11) Then 'Autumn'
WHEN Month_of_absence IN (12,1) Then 'Winter'
WHEN Month_of_absence IN (2,3) Then 'Spring'
ELSE 'Unknown' END AS Season_Names,
Body_mass_index,
CASE
WHEN Body_mass_index < 18.5 THEN 'Underweight'
WHEN Body_mass_index BETWEEN 18.5 AND 25 THEN 'Healthy '
WHEN Body_mass_index BETWEEN 25 AND 30 THEN 'Overweight'
WHEN Body_mass_index > 30 THEN 'Obese'
ELSE 'Unknown' END AS BMI_Category, Age,
CASE WHEN Age BETWEEN 18 AND 30 THEN 'Young-Aged'
WHEN Age BETWEEN 30 AND 50 THEN 'Middle-Aged'
WHEN Age > 50 THEN 'Old-Aged'
ELSE 'Underage' END AS 'Life_Stage',
Seasons, Day_of_the_week, Transportation_expense, Education, Son, Social_drinker, Social_smoker, Pet, Disciplinary_failure, Work_load_Average_day, Absenteeism_time_in_hours
from Absenteeism_at_work a
left join compensation c
ON a.ID= c.ID 
left join Reasons r
ON a.Reason_for_absence = r.Number;

