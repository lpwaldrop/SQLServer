USE IBM_HR;
GO

--Table to store primary key.
CREATE TABLE EmployeeKey (
	EmployeeNumber smallint PRIMARY KEY,
	Attrition char(1)
);
GO

--Create Employee information table table.
CREATE TABLE Employee (
	EmployeeNumber smallint FOREIGN KEY REFERENCES EmployeeKey(EmployeeNumber),
	Age tinyint,
	Gender char(1),
	MaritalStatus char(10),
	DistanceFromHome tinyint,
	YearsAtCompany tinyint,
	TotalWorkingYears tinyint,
	MonthlyIncome smallint,
	StockOptionLevel tinyint,
	BusinessTravel char(20),
	OverTime char(1),
	PerformanceRating tinyint
);
GO

--Create three tables based on Department field
CREATE TABLE SalesDepartment (
	EmployeeNumber smallint FOREIGN KEY REFERENCES EmployeeKey(EmployeeNumber),
	JobRole char(50),
	JobLevel tinyint,
	YearsInCurrentRole tinyint,
	EducationField char(50),
	Education tinyint,
	HourlyRate tinyint,
	DailyRate smallint,
	MonthlyRate smallint
);
GO

CREATE TABLE HumanResourcesDepartment (
	EmployeeNumber smallint FOREIGN KEY REFERENCES EmployeeKey(EmployeeNumber),
	JobRole char(50),
	JobLevel tinyint,
	YearsInCurrentRole tinyint,
	EducationField char(50),
	Education tinyint,
	HourlyRate tinyint,
	DailyRate smallint,
	MonthlyRate smallint
);
GO

CREATE TABLE ResearchDepartment (
	EmployeeNumber smallint FOREIGN KEY REFERENCES EmployeeKey(EmployeeNumber),
	JobRole char(50),
	JobLevel tinyint,
	YearsInCurrentRole tinyint,
	EducationField char(50),
	Education tinyint,
	HourlyRate tinyint,
	DailyRate smallint,
	MonthlyRate smallint
);
GO

CREATE TABLE SurveyResults (
	EmployeeNumber smallint FOREIGN KEY REFERENCES EmployeeKey(EmployeeNumber),
	JobSatisfaction tinyint,
	RelationshipSatisfaction tinyint,
	EnvironmentalSatisfaction tinyint,
	JobInvolvement tinyint,
	WorkLifeBalance tinyint,
	YearsWithCurrManager tinyint,
	YearsSinceLastPromotion tinyint
);
GO