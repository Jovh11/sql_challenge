#Question 1
#List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON
salaries.emp_no = employees.emp_no;

#Question 2
#List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date LIKE '%1986';

#Question 3
#List the manager of each department with the following information: department number, department name, the managers employee number, last name, first name

SELECT department_manager.dept_no, departments.dept_name, department_manager.emp_no, employees.last_name, employees.first_name
FROM department_manager
JOIN departments ON
departments.dept_no = department_manager.dept_no
JOIN employees ON
employees.emp_no = department_manager.emp_no;


#Question 4
List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON
employees.emp_no = dept_emp.emp_no
JOIN departments ON
departments.dept_no = dept_emp.dept_no;


#Question 5
#List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';



#Question 6
#List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT dept_no FROM departments
WHERE dept_name = 'Sales';

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp 
JOIN departments ON
departments.dept_no = dept_emp.dept_no
JOIN employees ON
employees.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no = 'd007';


#Question 7
#List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT dept_no FROM departments
WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp 
JOIN departments ON
departments.dept_no = dept_emp.dept_no
JOIN employees ON
employees.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no = 'd007' OR dept_emp.dept_no = 'd005';


#Question 8
#List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

SELECT last_name, COUNT(last_name) FROM employees
GROUP BY (last_name)
ORDER BY COUNT(last_name) DESC;



