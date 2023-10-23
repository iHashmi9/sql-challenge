-- Question 1

Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from Employees e
Join Salaries s ON e.emp_no = s.emp_no; 

-- Question 2

Select first_name, last_name, hire_date
from Employees
Where Date_part('year', hire_date) = 1986;

-- Question 3

Select dm.dept_no, d.dept_name, dm.emp_no AS manager_no,e.last_name AS manager_last_name, e.first_name AS manager_first_name
From Dept_Manager dm
Join Departments d ON dm.dept_no = d.dept_no
Join Employees e ON dm.emp_no = e.emp_no;

-- Question 4

Select de.emp_no, e.last_name, e.first_name, d.dept_name, de.dept_no
From Dept_Emp de
Join Employees e ON de.emp_no = e.emp_no
Join Departments d ON de.dept_no = d.dept_no;

-- Question 5

Select first_name, last_name, sex
From Employees
Where first_name = 'Hercules' AND last_name LIKE 'B%';

-- Question 6

Select e.emp_no, e.last_name, e.first_name
From Employees e
Join Dept_Emp de ON e.emp_no = de.emp_no
Join Departments d ON de.dept_no = d.dept_no
Where d.dept_name = 'Sales';

-- Question 7

Select e.emp_no, e.last_name, e.first_name, d.dept_name
From Employees e
Join Dept_Emp de ON e.emp_no = de.emp_no
Join Departments d ON de.dept_no = d.dept_no
Where d.dept_name IN ('Sales', 'Development');

-- Question 8

Select last_name, Count(*) AS frequency
From Employees
Group By last_name
Order By frequency DESC;