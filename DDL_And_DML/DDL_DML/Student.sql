CREATE TABLE [dbo].[Student]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Reg_No] INT NULL, 
    [Name] VARCHAR(50) NULL, 
    [Class] VARCHAR(50) NULL, 
    [Group] VARCHAR(50) NULL, 
    [Gender] VARCHAR(50) NULL, 
    [Phone_No] VARCHAR(10) NULL
);

drop table Student;

ALter Table Student Add Father_Name VarChar(50);

Truncate Table Student;

--ALTER TABLE Student RENAME TO Student_Details ;   
--ALTER TABLE Student RENAME COLUMN [Id] to SI_No;
--ALTER TABLE Student CHANGE COLUMN ID StudentsID INT;

ALTER TABLE Student
ALTER COLUMN  Gender Varchar(15); 

ALTER TABLE Student
DROP COLUMN Gender; 


Insert Into Student Values 
(1,2344001,'Arjun','XII','MatheBiology','Male','9854652545'),
(2,2344002,'Sabari','XII','MatheBiology','Male','9245653784'),
(3,2344003,'Yuvaraj','XII','MatheBiology','Male','9756451253'),
(4,2344004,'RAm','XII','MatheBiology','Male','7845856545');


UPDATE Student
SET Father_Name = 
    CASE Id
        WHEN 1 THEN  'RaviKumar' 
        WHEN 2 THEN  'Murali'
		WHEN 3 THEN  'Hari'
		WHEN 4 THEN  'Madhan'
    END
WHERE Id IN (1, 2, 3, 4);

select * from Student

Delete from Student where Id = 4;





