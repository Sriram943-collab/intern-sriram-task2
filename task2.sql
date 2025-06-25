
-- Drop the table if it already exists to avoid duplicate primary key errors
DROP TABLE IF EXISTS Employees;

-- Step 1: Create the table
CREATE TABLE Employees (
    ID INTEGER PRIMARY KEY,
    Name TEXT,
    Age INTEGER,
    Department TEXT
);

-- Step 2: Insert rows (some values missing using NULL)
INSERT INTO Employees (ID, Name, Age, Department) VALUES (1, 'Alice', 30, 'HR');
INSERT INTO Employees (ID, Name, Age, Department) VALUES (2, 'Bob', NULL, 'IT');
INSERT INTO Employees (ID, Name, Age, Department) VALUES (3, 'Charlie', 25, NULL);
INSERT INTO Employees (ID, Name, Age, Department) VALUES (4, NULL, 28, 'Finance');

-- Step 3: Handle NULLs using UPDATE with WHERE conditions
UPDATE Employees SET Age = 35 WHERE ID = 2; -- Filling missing Age
UPDATE Employees SET Department = 'Marketing' WHERE ID = 3; -- Filling missing Department
UPDATE Employees SET Name = 'David' WHERE ID = 4; -- Filling missing Name

-- Step 4: Delete a specific row using DELETE with WHERE
DELETE FROM Employees WHERE ID = 1;
