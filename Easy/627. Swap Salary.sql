/*
Table: Salary

+-------------+----------+
| Column Name | Type     |
+-------------+----------+
| id          | int      |
| name        | varchar  |
| sex         | ENUM     |
| salary      | int      |
+-------------+----------+
id is the primary key for this table.
The sex column is ENUM value of type ('m', 'f').
The table contains information about an employee.


Required Query:

Swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.


SQL Schema:

Create table If Not Exists Salary (id int, name varchar(100), sex char(1), salary int)
Truncate table Salary
insert into Salary (id, name, sex, salary) values ('1', 'A', 'm', '2500')
insert into Salary (id, name, sex, salary) values ('2', 'B', 'f', '1500')
insert into Salary (id, name, sex, salary) values ('3', 'C', 'm', '5500')
insert into Salary (id, name, sex, salary) values ('4', 'D', 'f', '500')

Example:

Input: 
Salary table:
+----+------+-----+--------+
| id | name | sex | salary |
+----+------+-----+--------+
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |
+----+------+-----+--------+
Output: 
+----+------+-----+--------+
| id | name | sex | salary |
+----+------+-----+--------+
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |
+----+------+-----+--------+
*/

-- Solution:
UPDATE Salary SET sex = CASE WHEN sex = 'm' THEN 'f' ELSE 'm' END