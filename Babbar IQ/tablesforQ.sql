-- create database sqlIQ;
show databases;
use sqlIQ;

CREATE TABLE Worker (
    Worker_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Salary DECIMAL(10,2),
    Joining_Date DATE,
    Department VARCHAR(50)
);

INSERT INTO Worker VALUES
(1, 'John', 'Doe', 100000.00, '2020-01-15', 'HR'),
(2, 'Jane', 'Smith', 80000.00, '2019-03-12', 'Finance'),
(3, 'Michael', 'Johnson', 120000.00, '2021-07-01', 'IT'),
(4, 'Emily', 'Davis', 90000.00, '2022-05-20', 'Admin');

CREATE TABLE Bonus (
    Worker_Ref_ID INT,
    Bonus_Amount DECIMAL(10,2),
    Bonus_Date DATE,
    FOREIGN KEY (Worker_Ref_ID) REFERENCES Worker(Worker_ID)
);

INSERT INTO Bonus VALUES
(1, 5000.00, '2023-01-10'),
(2, 3000.00, '2023-02-15'),
(1, 7000.00, '2024-01-12'),
(3, 6000.00, '2024-03-20');

CREATE TABLE Title (
    Worker_Ref_ID INT,
    Worker_Title VARCHAR(50),
    Affected_From DATE,
    FOREIGN KEY (Worker_Ref_ID) REFERENCES Worker(Worker_ID)
);

INSERT INTO Title VALUES
(1, 'Manager', '2021-01-01'),
(2, 'Accountant', '2020-06-01'),
(3, 'Senior Developer', '2022-08-15'),
(4, 'Administrator', '2023-02-20');



