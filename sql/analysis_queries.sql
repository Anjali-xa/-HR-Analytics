-- HR Analytics | Table: employees
SELECT department, COUNT(*) AS headcount,
 SUM(CASE WHEN attrition='Yes' THEN 1 ELSE 0 END) AS exits,
 ROUND(100.0*SUM(CASE WHEN attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS attrition_pct
FROM employees GROUP BY department ORDER BY attrition_pct DESC;
SELECT department, ROUND(AVG(monthly_income),2) AS avg_monthly_income FROM employees GROUP BY department;