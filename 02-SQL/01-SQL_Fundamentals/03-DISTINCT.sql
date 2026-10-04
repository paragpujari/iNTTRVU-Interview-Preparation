USE SQL_Basics;
-------------------------------------------Basic Level Interview Questions----------------------------------------------------------
---1. Find all unique cities from the Customers table
SELECT DISTINCT city AS Unique_cities FROM customers
---2. Find all unique cities from Employees
SELECT DISTINCT city AS Unique_cities FROM Employees
---3. Find all unique departments from Employees
SELECT DISTINCT department AS Unique_departments FROM Employees WHERE department IS NOT NULL
---4. Find all unique employee statuses
SELECT DISTINCT status AS Unique_employee_status FROM Employees
---5. Find all unique payment modes from Payments1
SELECT DISTINCT payment_mode AS Unique_payment_mode FROM Payments1
------------------------------------------Intermediate Level Interview Questions----------------------------------------------------
---6. Find unique combinations of employee city and department
SELECT DISTINCT city,department FROM Employees
---7. Find unique combinations of employee status and department
SELECT DISTINCT status,department FROM Employees
---8. Find unique combinations of payment mode and payment status
SELECT DISTINCT payment_mode,payment_status FROM Payments1
---9. Find unique combinations of product category and price
SELECT DISTINCT category,price FROM products
---10. Find unique combinations of employee department and status
SELECT DISTINCT department,status FROM Employees
----------------------------------------Analytical Based Interview Questions-------------------------------------------------------
---11. What is the difference between these two queries?
SELECT city  FROM Employees ---It gets all the cities from the employees table including the duplicates
SELECT DISTINCT city FROM Employees ----It gets only the unique cities from the employees table
---12. What will this query return?
SELECT DISTINCT city,department FROM Employees ---It gets the unique combinations of city and department from the employees table
---13. Will DISTINCT remove duplicate NULL values?
SELECT DISTINCT department FROM Employees ---Yes. DISTINCT will remove the duplicate NULL Values. It will give a single NULL record instead of multiple NULL records
---14. What will this return?
SELECT DISTINCT payment_mode,payment_status FROM Payments1 --- It will return the unique combination of payment mode and payment status
---15. What is the difference between these?
SELECT DISTINCT city FROM Employees             --- It returns all the unique cities from the employees table.
SELECT DISTINCT city,department FROM Employees  --- It returns the unique combination of city and department from the employees table
-------------------------------------Coding Based Interview Questions---------------------------------------------------------------
---16. A company wants to know all different cities in which its employees are located.Write the SQL query
SELECT DISTINCT city as different_cities FROM Employees
---17. The HR team wants a list of all different employee departments
SELECT DISTINCT department as employee_departments FROM Employees WHERE department IS NOT NULL
---18. The payment team wants to identify all different payment statuses present in the payment system
SELECT DISTINCT payment_status as different_payment_status FROM Payments1
---19. The business team wants to see every unique combination of payment mode and payment status
SELECT DISTINCT payment_mode,payment_status FROM Payments1
---20. The product team wants to know which unique product categories and prices exist in the product catalog
SELECT DISTINCT category,price FROM products