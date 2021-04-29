(1) employee number, last name, first name, sex, and salary of all employees, ordered by employee number

SELECT 
	employees2.emp_no,
	employees2.last_name,
	employees2.first_name,
	employees2.sex,
	salaries.salary
FROM 
	salaries
INNER JOIN employees2 ON
	employees2.emp_no=salaries.emp_no
ORDER BY emp_no;
	
	
(2) first name, last name, and hiring date for all employees hired in 1986

SELECT 
	employees2.first_name,
	employees2.last_name,
	CAST(employees2.hire_date AS DATE)
	--EXTRACT(YEAR FROM TIMESTAMP (employees2.hire_date::DATE))
FROM employees2
WHERE
	CAST(employees2.hire_date AS DATE) BETWEEN '1986-01-01' AND '1986-12-31';
	



(3) department number, department name, employee number, last name, and first name of all managers of each department

SELECT DISTINCT 
	departments.dept_no,
	departments.dept_name,
	employees2.emp_no,
	employees2.last_name,
	employees2.first_name
FROM departments
INNER JOIN dept_manager ON
	departments.dept_no=dept_manager.dept_no
INNER JOIN employees2 ON
	employees2.emp_no=dept_manager.emp_no
ORDER BY
	departments.dept_no;
	
	
(4) employee number, last name, first name, and department of each employee, ordered by employee number

SELECT 
	employees2.emp_no,
	employees2.last_name,
	employees2.first_name,
	departments.dept_name
FROM 
	departments
INNER JOIN dept_emp ON
	departments.dept_no=dept_emp.dept_no
INNER JOIN employees2 ON
	dept_emp.emp_no=employees2.emp_no
ORDER BY emp_no;
	

(5) first name, last name, birth date, sex employees whose first name is "Hercules" and last name begins with a "B"

SELECT 
	employees2.first_name,
	employees2.last_name,
	employees2.birth_date,
	employees2.sex
FROM employees2
WHERE employees2.first_name = 'Hercules' AND employees2.last_name LIKE 'B%';


(6) employee number, last name, first name, and department name of all employees in the Sales department, 
ordered by employee number

SELECT 
	employees2.emp_no,
	employees2.last_name,
	employees2.first_name,
	departments.dept_name
FROM
	departments
INNER JOIN dept_emp ON
	departments.dept_no=dept_emp.dept_no
INNER JOIN employees2 ON
	dept_emp.emp_no=employees2.emp_no
WHERE departments.dept_name='Sales'
ORDER BY emp_no;


(7) employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number

SELECT 
	employees2.emp_no,
	employees2.last_name,
	employees2.first_name,
	departments.dept_name
FROM
	departments
INNER JOIN dept_emp ON
	departments.dept_no=dept_emp.dept_no
INNER JOIN employees2 ON
	dept_emp.emp_no=employees2.emp_no
WHERE departments.dept_name='Sales' OR departments.dept_name='Development'
ORDER BY emp_no;

(8) Count the number of employees, grouped by last name

SELECT 
	employees2.last_name,
   COUNT(employees2.emp_no)
FROM 
   employees2
GROUP BY
   employees2.last_name;



