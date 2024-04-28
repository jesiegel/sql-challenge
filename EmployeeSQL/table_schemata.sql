-- titles table where title_id is the primary key
CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(100) NOT NULL
);

-- departments table where dept_no is the primary key
CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY, 
	dept_name VARCHAR(100) NOT NULL
);

-- employees table where emp_no is the primary key and emp_title_id is foreign key
CREATE TABLE employees (
	emp_no INT PRIMARY KEY, 
	emp_title_id VARCHAR(10) NOT NULL, 
	birth_date DATE NOT NULL, 
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- salaries table where emp_no is the primary key and foreign key
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- dept_emp table where emp_no and dept_np are the primary keys (composite key) 
-- and emp_no and dept_no are the foreign keys
CREATE TABLE dept_emp (
	emp_no INT NOT NULL, 
	dept_no VARCHAR(10) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- dept_manager table where dept_no and emp_no are the primary keys (composite key) 
-- and dept_no and emp_no are the foreign keys
CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


