
SELECT salary*months AS total_wage, COUNT(DISTINCT employee_id) AS employee_number
FROM employee
GROUP BY 1 desc
LIMIT 1;