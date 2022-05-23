-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees emp, salaries sal
WHERE emp.emp_no = sal.emp_no;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date like '%/%/1986';


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_mgr.dept_no, depts.dept_name, dept_mgr.emp_no, emp.last_name, emp.first_name
FROM dept_manager dept_mgr, departments depts, employees emp
WHERE (dept_mgr.dept_no = depts.dept_no) AND (dept_mgr.emp_no = emp.emp_no);


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, depts.dept_name
FROM dept_emp dept_emp, departments depts, employees emp
WHERE (dept_emp.dept_no = depts.dept_no) AND (dept_emp.emp_no = emp.emp_no);


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name like 'Hercules' AND last_name like 'B%';


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, depts.dept_name
FROM dept_emp dept_emp, departments depts, employees emp
WHERE (dept_emp.dept_no = depts.dept_no) AND (dept_emp.emp_no = emp.emp_no) AND (depts.dept_name = 'Sales');



-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, depts.dept_name
FROM dept_emp dept_emp, departments depts, employees emp
WHERE (dept_emp.dept_no = depts.dept_no) AND (dept_emp.emp_no = emp.emp_no) AND (depts.dept_name in ('Sales','Development'));



-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC;