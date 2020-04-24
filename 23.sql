-- Средний сахар в кратных ID
CREATE TABLE dbo.MyEmployees (
EmployeeID smallint NOT NULL,
FirstName nvarchar(30) NOT NULL,
LastName nvarchar(40) NOT NULL,
Title nvarchar(50) NOT NULL,
DeptID smallint NOT NULL,
ManagerID int NULL,
CONSTRAINT PK_EmployeeID PRIMARY KEY CLUSTERED (EmployeeID ASC)
);
GO
INSERT INTO dbo.MyEmployees 
VALUES (1, N'Иван', N'Петров', N'Главный исполнительный директор',16,NULL),
(2, N'Петр', N'Иванов', N'Неглавный неисполнительный директор',13,1),
(3, N'Николай', N'Николаев', N'Менее нелавный неисполнительный директор',12,1),
(10, N'Костя', N'Кострома', N'Менеджер по свежести',5,2),
(11, N'Паша', N'Потеряша', N'Зам Менеджера по свежести',5,2),
(12, N'Наташа', N'Наташа', N'Менеджер по просрочке',4,3) ;

GO

WITH DirectReports (ManagerID, EmployeeID, Title, DeptID, Level) AS
(
SELECT e.ManagerID, e.EmployeeID, e.Title, e.DeptID, 0 AS Level FROM dbo.MyEmployees AS e
WHERE ManagerID IS NULL
UNION ALL

SELECT e.ManagerID, e.EmployeeID, e.Title, e.DeptID, Level + 1
FROM dbo.MyEmployees AS e INNER JOIN DirectReports AS d ON e.ManagerID = d.EmployeeID )

SELECT ManagerID, EmployeeID, Title, DeptID, Level FROM DirectReports ;

--DROP TABLE MyEmployees