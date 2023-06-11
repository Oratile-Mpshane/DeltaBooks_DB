CREATE DATABASE DeltaBooks;

USE DeltaBooks;

--create the 4 tables

CREATE TABLE Employees
(
empID int PRIMARY KEY,
firstname VARCHAR(50),
lastname VARCHAR(50),
phoneNr NCHAR(10),
job_title VARCHAR(50),
department_Name VARCHAR(50),
departmentNr int,
hired_date DATE,
minSalary MONEY,
maxSalary MONEY
);


INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('1', 'Maria', 'Anderson', '0796404059', 'Billing clerk', 'Accounting', '20', '24 March 1998', '8000', '45000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('2', 'Edward', 'Martins', '0845629874', 'Executive recruiter', 'HR', '60', '18 May 2016', '15000', '35000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('3', 'Leroy', 'Pieterse', '0723729544', 'IT security', 'IT', '80', '2 January 2017', '10000', '50000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('4', 'Lina', 'Cruz', '0833023360', 'Budget analyst', 'Accounting', '20', '4 February 2001', '11000', '170000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('5', 'Steve', 'Hawkin', '0633824762', 'Labor relations specialist', 'HR', '60', '18 June 2015', '50000', '1000000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('6', 'Lupertia', 'Molson', '0823793435', 'Cost consultant', 'Accounting', '20', '2 January 2017', '55000', '350000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('7', 'Caroline', 'Collins', '0743060976', 'Bookkeeper', 'Accounting', '20', '21 October 2014', '4500', '66000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('8', 'Christian', 'Neverson', '0648788660', 'Human resources manager', 'HR', '60', '2 September 2005', '5000', '80000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('9', 'Andy', 'Anderson', '0718859551', 'Chief HR officer', 'HR', '60', '1 August 2018', '20000', '250000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('10', 'Chris', 'Brown', '0603312254', 'Programmer', 'IT', '80', '18 May 1990', '3000', '100000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('11', 'Margrette', 'Morris', '0855336551', 'Web developer', 'IT', '80', '24 March 1998', '2500', '66000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('12', 'Cleo', 'Matthews', '0807419523', 'Network engineer', 'IT', '80', '29 June 2005', '7000', '55000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('13', 'Ciara', 'Uppington', '0792456982', 'Sales representative', 'Marketing', '10', '31 May 2012', '4500', '15000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('14', 'Caleb', 'Cabries', '0724827755', 'Marketing communication manager', 'Marketing', '10', '17 May 2008', '8000', '70000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('15', 'Caroline', 'Collins', '0741935532', 'Sales representative', 'Marketing', '10', '14 July 1998', '4500', '15000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('16', 'Kathrine', 'Boonzai', '0611014123', 'Sales representative', 'Marketing', '10', '15 April 2006', '4500', '15000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('17', 'Amanda', 'Du Pont', '0762830847', 'Marketing manager', 'Marketing', '10', '21 January 2011', '10000', '20000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('18', 'Tremaine', 'Aldon', '0762749289', 'Budget analyst', 'Accounting', '20', '29 September 2005', '11000', '170000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('19', 'Jerome', 'Martins', '0786587925', 'Product manager', 'Marketing', '10', '16 December 2005', '16000', '35000');

INSERT INTO Employees (empID, firstname, lastname, phoneNr, job_title, department_Name, departmentNr, hired_date, minSalary, maxSalary)
VALUES('20', 'Jasmine', 'Banks', '0747831800', 'Marketing communication manager', 'Marketing', '10', '24 November 2009', '8000', '70000');



SELECT * FROM Employees

----------------------------------------------------------------------------------------------------

CREATE TABLE Jobs
(
jobID NCHAR(10) PRIMARY KEY,
job_title VARCHAR(50),
minSalary MONEY,
maxSalary MONEY,
);


INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('SR', 'Sales representative', '4500', '15000');

INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('MM', 'Marketing manager', '10000', '20000');

INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('PM', 'Product manager', '16000', '35000');

INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('MCM', 'Marketing communication manager', '8000', '70000');


INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('BC', 'Billing clerk', '8000', '45000');

INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('BK', ' Bookkeeper', '4500', '66000');

INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('BA', 'Budget analyst', '11000', '170000');

INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('CC', 'Cost consultant', '55000', '350000');


INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('LRS', 'Labor relations specialist', '50000', '1000000');

INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('ER', 'Executive recruiter', '15000', '35000');

INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('HRM', 'Human resources manager', '5000', '80000');

INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('CHRO', ' Chief HR officer', '20000', '250000');


INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('Pgr', ' Programmer  ', '3000', '100000');

INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('WD', ' Web developer  ', '2500', '66000');

INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('Net Eng', ' Network engineer  ', '7000', '55000');

INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
VALUES('IT sec', ' IT security  ', '10000', '50000');

SELECT * FROM Jobs
-------------------------------------------------------------------------------------------------------------


CREATE TABLE Departments
(
departmentNr int PRIMARY KEY,
department_Name VARCHAR(50),
);


INSERT INTO Departments(departmentNr, department_Name)
VALUES('10', 'Marketing');

INSERT INTO Departments(departmentNr, department_Name)
VALUES('20', 'Accounting');

INSERT INTO Departments(departmentNr, department_Name)
VALUES('60', 'HR');

INSERT INTO Departments(departmentNr, department_Name)
VALUES('80', 'IT');


SELECT * FROM Departments


--------------------------------------------------------------------------------------


CREATE TABLE Locations
(
departmentNr int PRIMARY KEY,
department_Name VARCHAR(50),
location int not null
);


INSERT INTO Locations(departmentNr, department_Name, [location])
VALUES('10', 'Marketing', '1100');

INSERT INTO Locations(departmentNr, department_Name, [location])
VALUES('20', 'Accounting', '1700');

INSERT INTO Locations(departmentNr, department_Name, [location])
VALUES('60', 'HR', '1120');

INSERT INTO Locations(departmentNr, department_Name, [location])
VALUES('80', 'IT', '1700');


SELECT * FROM Locations



--------------------------------------------------------------------------------------------------------

--create a bridge table from tables that have a MANY to MANY relationship 

CREATE TABLE Departments_Jobs
(
departmentNr int not null FOREIGN KEY REFERENCES Departments(departmentNr),
jobID NCHAR(10) not null FOREIGN KEY REFERENCES Jobs (jobID)
PRIMARY KEY (departmentNr, jobID)
);

--BRIDGE TABLE DATA
INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('10', 'SR');

INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('10', 'MM');

INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('10', 'PM');

INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('10', 'MCM');



INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('20', 'BC');

INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('20', 'BK');

INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('20', 'BA');

INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('20', 'CC');



INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('60', 'LRS');

INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('60', 'ER');

INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('60', 'HRM');

INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('60', 'CHRO');



INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('80', 'Pgr');

INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('80', 'WD');

INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('80', 'Net Eng');

INSERT INTO Departments_Jobs (departmentNr, jobID)
VALUES ('80', 'IT sec');



SELECT * FROM Departments_Jobs

























