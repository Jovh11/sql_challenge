#Question 1

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON
salaries.emp_no = employees.emp_no;

#Question 2

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date LIKE '%1986';

#Question 3

SELECT department_manager.dept_no, departments.dept_name, department_manager.emp_no, employees.last_name, employees.first_name
FROM department_manager
JOIN departments ON
departments.dept_no = department_manager.dept_no
JOIN employees ON
employees.emp_no = department_manager.emp_no;


#Question 4

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON
employees.emp_no = dept_emp.emp_no
JOIN departments ON
departments.dept_no = dept_emp.dept_no;


#Question 5

SELECT first_name, last_name, sex FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';



#Question 6

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

SELECT last_name, COUNT(last_name) FROM employees
GROUP BY (last_name)
ORDER BY COUNT(last_name) DESC;



