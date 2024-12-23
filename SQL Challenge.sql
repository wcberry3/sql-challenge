--List the employee number, last name, first name, sex, and salary of each employee.

Select
    employees.emp_no
    employees.last_name,
    employees.first_name,
    employees.sex,
    salaries.salary	
From
    employees joined with salaries  (I am not sure show to do this join.)
Order by
    employees.hire_date ASC, employees.last_name ASC, employees.first_name Asc;


--List the first name, last name, and hire date for the employees who were hired in 1986.

Select
    employees.first_name,
    employees.last_name,
    employees.hire_date
From
    employees
Where
    extract(year from employees.hire_date) = 1986
order by
    employees.hire_date ASC, employees.last_name ASC, employees.first_name Asc;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.

Select
   titles.title_id
   departments.dept_no,
   departments.dept_name,
   employees.emp_no,
   employees.first_name,
   employees.last_name	
From
    employees joined with titles and departments.  (I am not sure show to do this join.)
    
Where
    extract titles.title_id = m0001
Order by
    employees.emp_no ASC, employees.last_name ASC, employees.first_name Asc;


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

Select
    dept_emp.emp_no,
    dept_emp.dept_no,
    departents.dept_name,
    employees.last_name,
    employees.first_name,
From
    employees joined with departments and dept_emp.  (I am not sure show to do this join.)
Order by
    dept_emp.emp_no ASC, employees.last_name ASC, employees.first_name Asc, departents.dept_name;


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

Select
    employees.first_name,
    employees.last_name,
    employees.sex
From
    employees
Where
    extract (first_name from employees.first_name) = Hercles and (last_name from employees.first_name) = B%
order by
    employees.hire_date ASC, employees.last_name ASC, employees.first_name Asc;


--List each employee in the Sales department, including their employee number, last name, and first name.
Select
    employee.emp-no,
    employee.first_name,
    employee.last_name,
    department.dept_name
From
    employee
    Join departent.dept_emp on employee.emp_n = departments.emp_no
    Join departments on departments.dept_no = departments.dept_no 
Where
    departments.dept_name = 'Sales"     
order by
    employee.last_name ASC, employee.first_name Asc;


List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select
   employees.last_name,
   coUnt(emplyees.emp_no) as num_last_name
From
   employee
Group By
    employees.last_name
Order By
    num_last_name desc;


