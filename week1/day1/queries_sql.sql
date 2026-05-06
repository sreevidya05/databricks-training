**Query #1**
    -- 1. Select all columns from the Employee table.
    SELECT * FROM Employee;
---
**Query #2**
    -- 2. Select only the name and salary columns from the Employee table.
    SELECT name, salary FROM Employee;
---
**Query #3**
    -- 3. Select employees who are older than 30
    SELECT * FROM Employee WHERE age > 30;
---
**Query #4**
    -- 4. Select the names of all departments.
    SELECT name FROM Department;
---
**Query #5**
    -- 5. Select employees who work in the IT department.
    SELECT e.* 
    FROM Employee e
    JOIN Department d ON e.department_id = d.department_id
    WHERE d.name = 'IT';
---
**Query #6**

    -- 6. Select employees whose names start with 'J'.
    SELECT * FROM Employee WHERE name LIKE 'J%';
---
**Query #7**

    -- 7. Select employees whose names end with 'e'.
    SELECT * FROM Employee WHERE name LIKE '%e';
---
**Query #8**

    -- 8. Select employees whose names contain 'a'.
    SELECT * FROM Employee WHERE name LIKE '%a%';

---
**Query #9**

    -- 9. Select employees whose names are exactly 9 characters long.
    SELECT * FROM Employee WHERE LENGTH(name) = 9;

---
**Query #10**

    -- 10. Select employees whose names have 'o' as the second character.
    SELECT * FROM Employee WHERE name LIKE '_o%';

---
**Query #11**

    -- 11. Select employees hired in the year 2020.
    SELECT * FROM Employee WHERE YEAR(hire_date) = 2020;



---
**Query #12**

    -- 12. Select employees hired in January of any year.
    SELECT * FROM Employee WHERE MONTH(hire_date) = 1;
---
**Query #13**

    -- 13. Select employees hired before 2019.
    SELECT * FROM Employee WHERE hire_date < '2019-01-01';
---
**Query #14**

    -- 14. Select employees hired on or after March 1, 2021.
    SELECT * FROM Employee WHERE hire_date >= '2021-03-01';

---
**Query #15**

    -- 15. Select employees hired in the last 2 years.
    SELECT * FROM Employee 
    WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);
---
**Query #16**

    -- 16. Select the total salary of all employees.
    SELECT SUM(salary) FROM Employee;

---
**Query #17**

    -- 17. Select the average salary of employees.
    SELECT AVG(salary) FROM Employee;

**Query #18**

    -- 18. Select the minimum salary in the Employee table.
    SELECT MIN(salary) FROM Employee;
---
**Query #19**

    -- 19. Select the number of employees in each department.
    SELECT department_id, COUNT(*) 
    FROM Employee GROUP BY department_id;

---
**Query #20**

    -- 20. Select the average salary of employees in each department.
    SELECT department_id, AVG(salary) 
    FROM Employee GROUP BY department_id;


---
**Query #21**

    -- 21. Select the total salary for each department.
    SELECT department_id, SUM(salary) 
    FROM Employee GROUP BY department_id;

---
**Query #22**

    -- 22. Select the average age of employees in each department.
    
    SELECT department_id, AVG(age) 
    FROM Employee GROUP BY department_id;

---
**Query #23**

    -- 23. Select the number of employees hired in each year.
    SELECT YEAR(hire_date), COUNT(*) 
    FROM Employee GROUP BY YEAR(hire_date);


---
**Query #24**

    -- 24. Select the highest salary in each department.
    SELECT department_id, MAX(salary) 
    FROM Employee GROUP BY department_id;

---
**Query #25**

    -- 25. Select the department with the highest average salary.
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    ORDER BY AVG(salary) DESC
    LIMIT 1;


---
**Query #26**

    -- 26. Select departments with more than 2 employees.
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    HAVING COUNT(*) > 2;

---
**Query #27**

    -- 27. Select departments with an average salary greater than 55000.
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    HAVING AVG(salary) > 55000;

---
**Query #28**

    -- 28. Select years with more than 1 employee hired.
    SELECT YEAR(hire_date)
    FROM Employee
    GROUP BY YEAR(hire_date)
    HAVING COUNT(*) > 1;

---
**Query #29**

    -- 29. Select departments with a total salary expense less than 100000.
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    HAVING SUM(salary) < 100000;

---
**Query #30**

    -- 30. Select departments with the maximum salary above 75000.
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    HAVING MAX(salary) > 75000;

**Query #31**

    -- 31. Select all employees ordered by their salary in ascending order.
    SELECT * FROM Employee ORDER BY salary ASC;
---
**Query #32**

    -- 32. Select all employees ordered by their age in descending order.
    SELECT * FROM Employee ORDER BY age DESC;
---
**Query #33**

    -- 33. Select all employees ordered by their hire date in ascending order.
    SELECT * FROM Employee ORDER BY hire_date ASC;
---
**Query #34**

    -- 34. Select employees ordered by their department and then by their salary.
    SELECT * FROM Employee ORDER BY department_id, salary;

---
**Query #35**

    -- 35. Select departments ordered by the total salary of their employees.
    SELECT d.department_id, SUM(e.salary) AS total_salary
    FROM Department d
    JOIN Employee e ON d.department_id = e.department_id
    GROUP BY d.department_id
    ORDER BY total_salary;


---
**Query #36**

    -- 36. Select employee names along with their department names.
    SELECT e.name, d.name
    FROM Employee e
    JOIN Department d ON e.department_id = d.department_id;

---
**Query #37**

    -- 37. Select project names along with the department names they belong to.
    SELECT p.name, d.name
    FROM Project p
    JOIN Department d ON p.department_id = d.department_id;


---
**Query #38**

    -- 38. Select employee names and their corresponding project names.
    SELECT e.name, p.name
    FROM Employee e
    JOIN Project p ON e.department_id = p.department_id;

---
**Query #39**

    -- 39. Select all employees and their departments, including those without a department.
    SELECT e.*, d.name
    FROM Employee e
    LEFT JOIN Department d ON e.department_id = d.department_id;

---
**Query #40**

    -- 40. Select all departments and their employees, including departments without employees.
    SELECT d.*, e.name
    FROM Department d
    LEFT JOIN Employee e ON d.department_id = e.department_id;


---
**Query #41**

    -- 41. Select employees who are not assigned to any project.
    SELECT *
    FROM Employee e
    LEFT JOIN Project p ON e.department_id = p.department_id
    WHERE p.project_id IS NULL;


---
**Query #42**

    -- 42. Select employees and the number of projects their department is working on.
    SELECT e.name, COUNT(p.project_id)
    FROM Employee e
    JOIN Project p ON e.department_id = p.department_id
    GROUP BY e.name;

---
**Query #43**

    -- 43. Select the departments that have no employees.
    SELECT d.*
    FROM Department d
    LEFT JOIN Employee e ON d.department_id = e.department_id
    WHERE e.emp_id IS NULL;


---
**Query #44**

    -- 44. Select employee names who share the same department with 'John Doe'.
    SELECT e.name
    FROM Employee e
    WHERE e.department_id = (
        SELECT department_id FROM Employee WHERE name = 'John Doe'
    );

---
**Query #45**

    -- 45. Select the department name with the highest average salary.
    SELECT d.name
    FROM Department d
    JOIN Employee e ON d.department_id = e.department_id
    GROUP BY d.name
    ORDER BY AVG(e.salary) DESC
    LIMIT 1;

---
**Query #46**

    -- 46. Select the employee with the highest salary.
    SELECT * FROM Employee
    WHERE salary = (SELECT MAX(salary) FROM Employee);


---
**Query #47**

    -- 47. Select employees whose salary is above the average salary.
    SELECT * FROM Employee
    WHERE salary > (SELECT AVG(salary) FROM Employee);

---
**Query #48**

    -- 48. Select the second highest salary from the Employee table.
    SELECT DISTINCT salary
    FROM Employee e1
    WHERE 1 = (
      SELECT COUNT(DISTINCT salary)
      FROM Employee e2
      WHERE e2.salary > e1.salary
    );


---
**Query #49**

    -- 49. Select the department with the most employees.
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    ORDER BY COUNT(*) DESC
    LIMIT 1;

---
**Query #50**

    -- 50. Select employees who earn more than the average salary of their department.
    SELECT *
    FROM Employee e
    WHERE salary > (
        SELECT AVG(salary)
        FROM Employee
        WHERE department_id = e.department_id
    );


---
**Query #51**

    -- 51. Select the nth highest salary (for example, 3rd highest).
    SELECT DISTINCT salary
    FROM Employee e1
    WHERE 2 = (
      SELECT COUNT(DISTINCT salary)
      FROM Employee e2
      WHERE e2.salary > e1.salary
    );

---
**Query #52**

    -- 52. Select employees who are older than all employees in the HR department.
    SELECT *
    FROM Employee
    WHERE age > ALL (
      SELECT age
      FROM Employee
      WHERE department_id = (
        SELECT department_id FROM Department WHERE name = 'HR'
      )
    );


---
**Query #53**

    -- 53. Select departments where the average salary is greater than 55000.
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    HAVING AVG(salary) > 55000;

---
**Query #54**

    -- 54. Select employees who work in a department with at least 2 projects.
    SELECT e.*
    FROM Employee e
    WHERE e.department_id IN (
      SELECT department_id
      FROM Project
      GROUP BY department_id
      HAVING COUNT(*) >= 2
    );


---
**Query #55**

    -- 55. Select employees who were hired on the same date as 'Jane Smith'.
    SELECT *
    FROM Employee
    WHERE hire_date = (
      SELECT hire_date FROM Employee WHERE name = 'Jane Smith'
    );


---
**Query #56**

    -- 56. Select the total salary of employees hired in the year 2020.
    SELECT SUM(salary)
    FROM Employee
    WHERE YEAR(hire_date) = 2020;

---
**Query #57**

    -- 57. Select the average salary of employees in each department, ordered by the average salary in descending order.
    SELECT department_id, AVG(salary) avg_sal
    FROM Employee
    GROUP BY department_id
    ORDER BY avg_sal DESC;



---
**Query #58**

    -- 58. Select departments with more than 1 employee and an average salary greater than 55000.
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    HAVING COUNT(*) > 1 AND AVG(salary) > 55000;


---
**Query #59**

    -- 59. Select employees hired in the last 2 years, ordered by their hire date.
    SELECT *
    FROM Employee
    WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR)
    ORDER BY hire_date;


---
**Query #60**

    -- 60. Select the total number of employees and the average salary for departments with more than 2 employees.
    SELECT department_id, COUNT(*) emp_count, AVG(salary)
    FROM Employee
    GROUP BY department_id
    HAVING COUNT(*) > 2;


---
**Query #61**

    -- 61. Select the name and salary of employees whose salary is above the average salary of their department.
    SELECT name, salary
    FROM Employee e
    WHERE salary > (
      SELECT AVG(salary)
      FROM Employee
      WHERE department_id = e.department_id
    );


---
**Query #62**

    -- 62. Select the names of employees who are hired on the same date as the oldest employee in the company.
    SELECT *
    FROM Employee
    WHERE hire_date = (
      SELECT MIN(hire_date) FROM Employee
    );


---
**Query #63**

    -- 63. Select the department names along with the total number of projects they are working on, ordered by the number of projects.
    SELECT d.name, COUNT(p.project_id)
    FROM Department d
    LEFT JOIN Project p ON d.department_id = p.department_id
    GROUP BY d.name
    ORDER BY COUNT(p.project_id);

---
**Query #64**

    -- 64. Select the employee name with the highest salary in each department.
    SELECT *
    FROM Employee e
    WHERE salary = (
      SELECT MAX(salary)
      FROM Employee
      WHERE department_id = e.department_id
    );


---
**Query #65**

    -- 65. Select the names and salaries of employees who are older than the average age of employees in their department.
    SELECT name, salary
    FROM Employee e
    WHERE age > (
      SELECT AVG(age)
      FROM Employee
      WHERE department_id = e.department_id
    );
