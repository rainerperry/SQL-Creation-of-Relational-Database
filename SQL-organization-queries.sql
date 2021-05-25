--Rainer Perry
--Data Analysis

--QUERIES

--List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT emp2.emp_no, emp2.last_name, emp2.first_name, emp2.sex, s2.salary
FROM employees as emp2
INNER JOIN salaries AS s2
ON emp2.emp_no = s2.emp_no

--List first name, last name, and hire date for employees who were hired in 1986.

SELECT last_name, last_name, hire_date
FROM employees
WHERE hire_date between '01-01-1986' and '12-31-1986'

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

SELECT dp2.dept_no, dp2.dept_name, dm2.emp_no, emp3.last_name, emp3.first_name
FROM dept_manager as dm2
INNER JOIN employees as emp3 ON dm2.emp_no = emp3.emp_no
INNER JOIN departments as dp2 ON dm2.dept_no = dp2.dept_no

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT dp2.dept_name, de2.emp_no, emp3.last_name, emp3.first_name
FROM dept_emp as de2
INNER JOIN employees as emp3 ON de2.emp_no = emp3.emp_no
INNER JOIN departments as dp2 ON de2.dept_no = dp2.dept_no

--List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%'

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

SELECT dp2.dept_name, de2.emp_no, emp3.last_name, emp3.first_name
FROM dept_emp as de2
INNER JOIN employees as emp3 ON de2.emp_no = emp3.emp_no
INNER JOIN departments as dp2 ON de2.dept_no = dp2.dept_no
WHERE dp2.dept_name = 'Sales'

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT dp2.dept_name, de2.emp_no, emp3.last_name, emp3.first_name
FROM dept_emp as de2
INNER JOIN employees as emp3 ON de2.emp_no = emp3.emp_no
INNER JOIN departments as dp2 ON de2.dept_no = dp2.dept_no
WHERE dp2.dept_name in ('Sales' , 'Development')

--In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC




