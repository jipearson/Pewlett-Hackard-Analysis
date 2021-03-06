-- CREATING TABLES FOR PH-EMPLOYEEDB
CREATE TABLE DEPARTMENTS (
     DEPT_NO VARCHAR(4) NOT NULL,
     DEPT_NAME VARCHAR(40) NOT NULL,
     PRIMARY KEY (DEPT_NO),
     UNIQUE (DEPT_NAME)
);

-- CREATING TABLES FOR PH-EMPLOYEEDB
CREATE TABLE EMPLOYEES (
     EMP_NO INT NOT NULL,
	 BIRTH_DATE DATE NOT NULL,
	 FIRST_NAME VARCHAR NOT NULL,
	 LAST_NAME VARCHAR NOT NULL,
	 GENDER VARCHAR NOT NULL,
	 HIRE_DATE DATE NOT NULL,
	 PRIMARY KEY (EMP_NO)
);

-- Creating tables for PH-EmployeeDB
CREATE TABLE DEPT_MANAGER (
DEPT_NO VARCHAR(4) NOT NULL,
    EMP_NO INT NOT NULL,
    FROM_DATE DATE NOT NULL,
    TO_DATE DATE NOT NULL,
FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES (EMP_NO),
FOREIGN KEY (DEPT_NO) REFERENCES DEPARTMENTS (DEPT_NO),
    PRIMARY KEY (EMP_NO, DEPT_NO)
);

-- CREATING TABLES FOR PH-EMPLOYEEDB
CREATE TABLE SALARIES (
  EMP_NO INT NOT NULL,
  SALARY INT NOT NULL,
  FROM_DATE DATE NOT NULL,
  TO_DATE DATE NOT NULL,
  FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES (EMP_NO),
  PRIMARY KEY (EMP_NO)
);

-- Creating tables for PH-EmployeeDB
CREATE TABLE TITLES (
  EMP_NO INT NOT NULL,
  TITLE VARCHAR NOT NULL,
  FROM_DATE DATE NOT NULL,
  TO_DATE DATE NOT NULL,
  FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES (EMP_NO),
  PRIMARY KEY (EMP_NO)
);

-- Creating tables for PH-EmployeeDB
CREATE TABLE DEPT_EMP (
    EMP_NO INT NOT NULL,
	DEPT_NO VARCHAR(4) NOT NULL,
    FROM_DATE DATE NOT NULL,
    TO_DATE DATE NOT NULL,
FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES (EMP_NO),
FOREIGN KEY (DEPT_NO) REFERENCES DEPARTMENTS (DEPT_NO),
    PRIMARY KEY (EMP_NO, DEPT_NO)
);

-- QUERY DATABSE 
SELECT * FROM 
titles;

