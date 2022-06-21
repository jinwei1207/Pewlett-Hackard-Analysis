# Pewlett-Hackard-Analysis

## Project Overview
The purpose of this project is to analyze the employment database to find the number of retiring employees by position. The Pewlett-Hackard organization would like to understand just how many people, and in which roles they will need to hire external talent and/or train current employees. We have also been asked to identify how many people by title would be eligible for a mentorship program.

## Resources and Software
The following four CSV data files were provided at the end of the analysis: 
- mentorship_eligibilty.csv, retirement_titles.csv, salaries.csv, unique_titles.csv
  - These starting files are found inside of the [Data folder](https://github.com/jinwei1207/Pewlett-Hackard-Analysis/tree/main/Data).
- PostgreSQL 14.3.1
- pgAdmin 4.6

## Results

The largest number of people will have the title of Senior Engineer with 25916 people eligible to retire and Senior Staff a close second with 24926 people.

![image](https://user-images.githubusercontent.com/104603177/174692897-70af6ccc-524f-453f-82ee-2386ddfb15fa.png)





## Summary

As the number of retirements begin to make an impact, Pewlett-Hackard will need to train new employees to fill these vacant positions. Eventually, there will need to be 90,398 roles filled across all departments. Even two high-level managment positions must be filled.

One potential solution is to create a company mentoring program, which would have qualified, retirement-ready employees train the next generation of Pewlett-Hackard workers. The table below is a breakdown of the positions of the eligible mentors.

![eligible_mentors]![image](https://user-images.githubusercontent.com/104603177/174693931-f658c312-ee77-48ea-ba04-dcc934beb91f.png)
```SQL
-- The query to create this mentorship table is:
SELECT COUNT(emp_no), title
FROM mentorship_eligibility
GROUP BY title
ORDER BY count DESC;
```

After analyzing the copmany employment records, it is found that 1,549 current employees would qualify for becoming mentors. Interestingly, while only 11% of mentors have the title "Senior Engineer," approximately 32.5% of retirees are Senior Engineers. Furthermore, none of the mentors have the title "Manager", which is a critical position that needs to be filled after the current managers retire. Although having mentors would be helpful, there are not enough new employees to be trained. Therefore, if Pewlett-Hackard decides to create a mentorship program to counteract the large wave of retirement headed towards the company, it is recommended to widely expand hiring efforts. Also, it is recommended to expand the pool of qualifed mentors by widening the birth_year parameter. By increasing the number of both mentors and new employees, it will be possible to prepare for the incoming wave of retirement facing Pewlett-Hackard.

