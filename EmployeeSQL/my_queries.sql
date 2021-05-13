-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date >= '1986-01-01' AND employees.hire_date <= '1986-12-31';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;

-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" 
-- and last names begin with "B."
SELECT employees.first_name, employees.last_name, employees.gender
FROM employees
WHERE employees.first_name = 'Hercules' AND employees.last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, 
-- and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales';


-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.


-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.