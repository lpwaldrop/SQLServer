INSERT INTO EmployeeKey(
	EmployeeNumber,
	Attrition
)
	SELECT EmployeeNumber, SUBSTRING(Attrition, 1, 1) AS Attrition
	FROM LoadingTable;
GO

INSERT INTO Employee (
	EmployeeNumber,
	Age,
	Gender,
	MaritalStatus,
	DistanceFromHome,
	YearsAtCompany,
	TotalWorkingYears,
	MonthlyIncome,
	StockOptionLevel,
	BusinessTravel,
	OverTime,
	PerformanceRating
)
	SELECT EmployeeNumber, Age, SUBSTRING(Gender, 1, 1) AS Gender, MaritalStatus, DistanceFromHome, YearsAtCompany, TotalWorkingYears, MonthlyIncome, StockOptionLevel, BusinessTravel, 
		   SUBSTRING(OverTime, 1, 1), PerformanceRating
	FROM LoadingTable;
GO

--Insert into new Department tables information from loading table.
INSERT INTO SalesDepartment(
	EmployeeNumber,
	JobRole,
	JobLevel,
	YearsInCurrentRole,
	EducationField,
	Education,
	HourlyRate,
	DailyRate,
	MonthlyRate
)
	SELECT EmployeeNumber, JobRole, JobLevel, YearsInCurrentRole, EducationField, Education, HourlyRate, DailyRate, MonthlyRate
	FROM LoadingTable
	WHERE Department = 'Sales';
GO

INSERT INTO HumanResourcesDepartment(
	EmployeeNumber,
	JobRole,
	JobLevel,
	YearsInCurrentRole,
	EducationField,
	Education,
	HourlyRate,
	DailyRate,
	MonthlyRate
)
	SELECT EmployeeNumber, JobRole, JobLevel, YearsInCurrentRole, EducationField, Education, HourlyRate, DailyRate, MonthlyRate
	FROM LoadingTable
	WHERE Department = 'Human Resources';
GO

INSERT INTO ResearchDepartment(
	EmployeeNumber,
	JobRole,
	JobLevel,
	YearsInCurrentRole,
	EducationField,
	Education,
	HourlyRate,
	DailyRate,
	MonthlyRate
)
	SELECT EmployeeNumber, JobRole, JobLevel, YearsInCurrentRole, EducationField, Education, HourlyRate, DailyRate, MonthlyRate
	FROM LoadingTable
	WHERE Department = 'Research & Development';
GO

--Store Survey answers in seperate table.
INSERT INTO SurveyResults (
	EmployeeNumber,
	JobSatisfaction,
	RelationshipSatisfaction,
	EnvironmentalSatisfaction,
	JobInvolvement,
	WorkLifeBalance,
	YearsWithCurrManager,
	YearsSinceLastPromotion
)
	SELECT EmployeeNumber, JobSatisfaction, RelationshipSatisfaction, EnvironmentalSatisfaction, JobInvolvement, WorkLifeBalance, YearsWithCurrManager, YearsSinceLastPromotion
	FROM LoadingTable;
GO