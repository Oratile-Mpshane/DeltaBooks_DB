USE DeltaBooks;

--Finance Requests

	-----1----- list the last name, first name and employee number of all employees that have a last name starting with M.
	SELECT empID, firstname, lastname
	FROM Employees
	WHERE lastname LIKE 'M%';


	-----2---- list the department number, last name, first name and phone number of all sales representatives who 
			-- were hired on or after 24 Mar 1998 sorted in ascending order of last name.

	SELECT firstname, lastname, phoneNr, departmentNr
	FROM Employees 
	WHERE [job_title]= 'Sales representative' AND [hired_date] >= '24 March 1998'
	ORDER BY lastname ASC;


	------3----- list all the data for all jobs where the minimum salary is less than or equal to 4500 sorted in 
			---- descending order of the minimum salary.

	SELECT J.[jobID],J.[job_title],J.[minSalary],J.[maxSalary],E.[department_Name],E.[departmentNr]
	FROM [dbo].[Jobs] AS J JOIN [dbo].[Employees] AS E
	ON J.[minSalary] = E.[minSalary]
	WHERE J.[minSalary] <='4500'
	ORDER BY [minSalary] DESC;

	-----4---- which jobs are found in the Marketing and Accounting departments?

	SELECT [job_title],[department_Name]
	FROM [dbo].[Employees]
	WHERE [department_Name] = 'Marketing' OR  [department_Name] = 'Accounting';


	----5----- list the department name, location, last name and salary of employees who work in 
			-- location 1700 sorted in ascending order of department name.

	SELECT L.[department_Name],L.[location],E.[lastname],E.[minSalary],E.[maxSalary]
	FROM [dbo].[Locations] AS L JOIN [dbo].[Employees] AS E
	ON L.[department_Name] = E.[department_Name]
	WHERE [location] = '1700'
	ORDER BY [department_Name] ASC;


	------6---- list the last name and first name for all employees who were hired in the months 
			--- of June or August (for all years) sorted in ascending order of last name.

	SELECT [firstname],[lastname]
	FROM [dbo].[Employees]
	WHERE MONTH([hired_date]) = 6 OR MONTH([hired_date]) = 8
	ORDER BY [lastname] ASC;

	
	----7---- Show the average salary for employees for one year (rounded to 2 decimal places).

	SELECT ROUND(AVG([minSalary])*12, 2) AS AVG_minSalary, ROUND(AVG([maxSalary])*12, 2) AS AVG_maxSalary
	FROM [dbo].[Employees];


	------8--- Show the total monthly salaries figure (0 decimal places) for all employees in departments 80 and 60.

	SELECT SUM(CAST([minSalary] AS INT)) AS minSal_Total, SUM(CAST([maxSalary] AS INT)) AS maxSal_Total
	FROM [dbo].[Employees]
	WHERE [departmentNr] = '60' OR [departmentNr] = '80';

-------------------------------------------------------------------------------------------------------------

--HR Requests

	----9----- List the department number, department name and the number of employees for each 
			-- department that has less than 4 employees grouping by department number and department name.
			-- Note: query tweaked to accommodate table data
			
	SELECT [departmentNr], [department_Name], COUNT([department_Name]) AS nr_of_people
	FROM [dbo].[Employees]
	GROUP BY [department_Name], [departmentNr]
	HAVING COUNT([department_Name]) <= 4;
	 

	---10--- List the department number, department name and the number of employees for the department 
		  -- that has the lowest number of employees using appropriate grouping.
		  -- Note: query tweaked to accommodate table data

	SELECT [departmentNr], [department_Name], COUNT([empID]) AS nr_of_people
	FROM [dbo].[Employees]
	GROUP BY [department_Name], [departmentNr]
	HAVING COUNT([empID]) < 4 OR COUNT([empID]) >= 5;


	---11--- 	List the department number and name for all departments where no sales representatives work.

	SELECT [departmentNr],[department_Name]
	FROM [dbo].[Employees]
	WHERE [job_title] <> 'Sales representative';


	---12-- Add the following new job: IT_ASST, IT Assistant, 5000, 8000

	INSERT INTO Jobs (jobID, job_title, minSalary, maxSalary)
	VALUES('IT_ASST', 'IT Assistant', '5000', '8000 ');
	
	
	---13--- Update all the minimum salaries for jobs with an increase of 500.

	SELECT [jobID], [job_title], [minSalary], [maxSalary], [minSalary_Raise] = [minSalary] + 500
	FROM [dbo].[Jobs]


	---14---- List all the data for jobs sorted in ascending order of job id.

	SELECT J.[jobID],J.[job_title],J.[minSalary],J.[maxSalary],E.[department_Name],E.[departmentNr]
	FROM [dbo].[Jobs] AS J JOIN [dbo].[Employees] AS E
	ON J.[minSalary] = E.[minSalary]
	ORDER BY J.[jobID] ASC;

--------------------------------------------------------------------------------------------------------------

--DBA Requests

	---17--- Drop the table for job history
	     --- this table is non-existent in my DB, but for consistency's sake:

	CREATE TABLE Job_History
	(
		[empID] int not null FOREIGN KEY REFERENCES [dbo].[Employees]([empID]),
		[firstname] VARCHAR(50),
		[lastname] VARCHAR(50),
		[hired_date] DATE,
		[job_title] VARCHAR(50),
		[departmentNr] int not null FOREIGN KEY REFERENCES [dbo].[Departments]([departmentNr]),
		[department_Name] VARCHAR(50),
		[minSalary] MONEY,
		[maxSalary] MONEY,
		[end_date] DATE,
		[days_worked] int,
		[hours_worked] int
	);
	
	DROP TABLE Job_History;


	---18-- Create a new table called SAL_HISTORY to include the fields EMPID, FIRSTNAME, LASTNAME, 
		 -- HIREDATE and SAL with the same data types as the employees table.

	Create table SAL_HISTORY 
	(
	empID int PRIMARY KEY,
	firstname VARCHAR(50),
	lastname VARCHAR(50),
	hired_date DATE,
	SAL MONEY
	);


	---19--- Insert data from the employees table where the employee number is 
		  -- less than or equal to 130 into the SAL_HISTORY table.

	INSERT INTO SAL_HISTORY
		SELECT [empID], [firstname], [lastname], [hired_date], [maxSalary]
		FROM [dbo].[Employees]
		WHERE [empID] <= 130;

	
	---20--- Display all the records and all the fields in the SAL_HISTORY table.

	SELECT * FROM SAL_HISTORY;


-------------------------------------------------------------------------------------------------------------------------------------------

