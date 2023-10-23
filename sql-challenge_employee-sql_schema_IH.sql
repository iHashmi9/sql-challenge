--DROP TABLES IF EXISTS Employees;
--DROP TABLES IF EXISTS Dept_Emp;
--DROP TABLES IF EXISTS Salaries;
--DROP TABLES IF EXISTS Dept_Manager;
--DROP TABLES IF EXISTS Titles;
--DROP TABLES IF EXISTS Departments;

-- Create Employees table
CREATE TABLE Employees (
    emp_no serial PRIMARY KEY,
    emp_title_id varchar(5) NOT NULL PRIMARY KEY,
    birth_date date NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    sex char(1) NOT NULL,
    hire_date date NOT NULL
);

-- Create Dept_Emp table
CREATE TABLE Dept_Emp (
    emp_no integer NOT NULL,
    dept_no varchar(5) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

-- Create Salaries table
CREATE TABLE Salaries (
    emp_no integer NOT NULL,
	salary integer NOT NULL,
    PRIMARY KEY (emp_no, salary),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Create Dept_Manager table
CREATE TABLE Dept_Manager (
    emp_no integer NOT NULL,
	dept_no varchar(5) NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

-- Create Titles table
CREATE TABLE Titles (
    title_id varchar(5) PRIMARY KEY,
    title varchar(50) NOT NULL,
	FOREIGN KEY (title_id) REFERENCES Employees(emp_title_id)
);

-- Create Departments table
CREATE TABLE Departments (
    dept_no varchar(5) PRIMARY KEY,
    dept_name varchar(50) NOT NULL
);
