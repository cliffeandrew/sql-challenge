--HW_1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no
ORDER BY employees.emp_no;

--HW_2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE date_part('year',hire_date) = 1986
ORDER BY employees.hire_date;

--HW_3. List the manager of each department with the following information: department number,
--      department name, the manager's employee number, last name, first name.
SELECT departments.dept_no, dept_name, dept_manager.emp_no, last_name, first_name
FROM departments
INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no
ORDER BY departments.dept_no, dept_manager.emp_no;

--HW_4. List the department of each employee with the following information: employee number,
--      last name, first name, and department name.
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
ORDER BY employees.emp_no, departments.dept_name;

--HW_5. List first name, last name, and sex for employees whose first name is
--      "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%'
ORDER BY last_name;

--HW_6. List all employees in the Sales department, including their employee number,
--      last name, first name, and department name.
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'
ORDER BY last_name, first_name;

--HW_7. List all employees in the Sales and Development departments, including their
--      employee number, last name, first name, and department name.
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name IN ('Sales','Development')
ORDER BY last_name, first_name;

--HW_8. In descending order, list the frequency count of employee last names,
--      i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;






