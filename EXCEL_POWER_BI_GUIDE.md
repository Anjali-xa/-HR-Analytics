# HR Analytics: Excel & Power BI Guide

This guide complements the CSV dataset and Python starter script in this repository.

## Excel workflow
Use PivotTables for headcount and attrition by department. Add `Attrition Flag = IF([@attrition]="Yes",1,0)` and calculate attrition rate as exits divided by headcount.

## Power BI dashboard
 Measures:
```DAX
Headcount = DISTINCTCOUNT(employees[employee_id])
Exits = CALCULATE([Headcount],employees[attrition]="Yes")
Attrition Rate = DIVIDE([Exits],[Headcount])
Average Monthly Income = AVERAGE(employees[monthly_income])
```
Dashboard: headcount, exits, attrition rate and average income cards; attrition by department; income by department; department slicer. Small sample data is synthetic.

## Import and modelling notes
1. In Power BI Desktop choose **Get Data → Text/CSV** and select `data/dataset.csv`.
2. Rename the imported table to the name used in the DAX measures in this guide.
3. Check data types (dates as Date, counts and amounts as Whole/Decimal Number).
4. Create the measures from **Modeling → New measure**.
5. Add the suggested visuals and slicers; save your work as `dashboard.pbix` in this repository when finished.

**Important:** The supplied datasets are small synthetic practice samples. Validate field names and data types after import. The PBIX dashboard must be created and saved in Power BI Desktop; this guide does not claim a PBIX file is already included.
