SELECT
E.emp_no,
last_name,
first_name,
sex,
S.salary
FROM employees E 
LEFT OUTER JOIN salaries S on E.emp_no = S.emp_no;


SELECT
first_name,
last_name,
hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date)=1986;


SELECT
DM.dept_no,
DN.dept_name,
DM.emp_no,
E.first_name,
E.last_name
FROM department_manager DM
INNER JOIN departments DN on DM.dept_no = DN.dept_no
INNER JOIN employees E on  E.emp_no = DM.emp_no;


SELECT
DN.dept_name,
DE.emp_no,
E.first_name,
E.last_name
FROM department_employees DE
INNER JOIN departments DN on DE.dept_no = DN.dept_no
INNER JOIN employees E on  E.emp_no = DE.emp_no;


SELECT
first_name,
last_name,
sex
FROM employees
WHERE first_name LIKE 'Hercules%'AND last_name LIKE 'B%';


SELECT
E.emp_no,
E.first_name,
E.last_name,
D.dept_name
FROM employees E
INNER JOIN departments D on D.dept_no = D.dept_no
INNER JOIN department_employees DE on DE.emp_no = E.emp_no
WHERE D.dept_name IN ('Sales');


SELECT
E.emp_no,
E.first_name,
E.last_name,
D.dept_name
FROM employees E
INNER JOIN departments D on D.dept_no = D.dept_no
INNER JOIN department_employees DE on DE.emp_no = E.emp_no
WHERE D.dept_name IN ('Sales', 'Development');


SELECT 
last_name, 
COUNT(last_name)
FROM employees
GROUP BY last_name;
