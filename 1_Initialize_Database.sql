--Create database to store HR Data.
CREATE DATABASE IBM_HR;
GO

--Use database going forward.
USE IBM_HR;
GO

--Create table to load initial data for normalization. Named columns with initial data types.
CREATE TABLE LoadingTable (
	Age tinyint,
	Attrition char(3),
	BusinessTravel char(50),
	DailyRate smallint,
	Department char(50),
	DistanceFromHome tinyint,
	Education tinyint,
	EducationField char(50),
	EmployeeCount tinyint,
	EmployeeNumber smallint,
	EnvironmentalSatisfaction tinyint,
	Gender char(10),
	HourlyRate tinyint,
	JobInvolvement tinyint,
	JobLevel tinyint,
	JobRole char(50),
	JobSatisfaction tinyint,
	MaritalStatus char(50),
	MonthlyIncome smallint,
	MonthlyRate smallint,
	NumCompaniesWorked tinyint,
	Over18 char(1),
	OverTime char(3),
	PercentSalaryHike tinyint,
	PerformanceRating tinyint,
	RelationshipSatisfaction tinyint,
	StandardHours tinyint,
	StockOptionLevel tinyint,
	TotalWorkingYears tinyint,
	TrainingTimesLastYear tinyint,
	WorkLifeBalance tinyint,
	YearsAtCompany tinyint,
	YearsInCurrentRole tinyint,
	YearsSinceLastPromotion tinyint,
	YearsWithCurrManager tinyint,
);
GO

--Load csv file into table from local file. Skip first row headers and identify fields by comma.
BULK INSERT IBM_HR.dbo.LoadingTable
	FROM 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLDEVELOPER2019\MSSQL\IBM_HR_Data.csv'
	WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ','
		);
GO