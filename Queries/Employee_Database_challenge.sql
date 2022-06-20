-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title,
INTO unique_titles
FROM retirement_titles
WHERE to_date='9999-01-01'
ORDER BY emp_no,last_name DESC;

-- retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT (unique_titles.title),
title
INTO retiring_titles
FROM unique_titles
SELECT DISTINCT ON (employees.emp_no) employees.emp_no,
       employees.emp_no,
       employees.first_name,
       employees.last_name,
       employees.birth_date,
       dept_manager.from_date,
       dept_manager.to_date
INTO mentorship_eligibilty
FROM employees
INNER JOIN titles
ON(employees.emp_no=titles.emp_no)
WHERE (employees.birth_date='1965-01-01' AND '1965-12-31')
       AND(dept_manager='9999-01-01')
ORDER BY emp_no;
GROUP BY title
ORDER BY COUNT(unique_titles.title) DESC

-- Deliverable 2
SELECT DISTINCT ON (employees.emp_no) employees.emp_no,
       employees.first_name,
       employees.last_name,
       employees.birth_date,
       dept_emp.from_date,
       dept_emp.to_date,
       titles.title
INTO mentorship_eligibilty
FROM employees
INNER JOIN dept_emp
ON (employees.emp_no=dept_emp.emp_no)
INNER JOIN titles
ON(employees.emp_no=titles.emp_no)
WHERE (employees.birth_date BETWEEN '1965/01/01' AND '1965/12/31')
       AND(dept_emp.to_date = '9999-01-01')
ORDER BY emp_no;


     

