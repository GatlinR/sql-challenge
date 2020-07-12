CREATE TABLE Departments (
    dept_no VARCHAR(255) NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (dept_no),
);

CREATE TABLE Employees (
    emp_no INT NOT NULL,
    birth_date DATE,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    gender VARCHAR(255),
    hire_date DATE,
    PRIMARY KEY (emp_no)
);
CREATE TABLE Dept_emp (
    id SERIAL PRIMARY KEY,
    emp_no INT NOT NULL,
    dept_no VARCHAR(255) NOT NULL,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Dept_manager (
    dept_no VARCHAR(255) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)    
);

CREATE TABLE Salaries (
    emp_no INT NOT NULL,
    salary INT,
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)    
);

CREATE TABLE Titles (
    emp_no INT NOT NULL,
    title VARCHAR(255),
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)    
);

