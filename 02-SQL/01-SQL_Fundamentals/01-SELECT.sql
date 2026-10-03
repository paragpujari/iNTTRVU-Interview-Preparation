USE SQL_Basics;
--------------------------------Basic Level Interview Questions---------------------------------------------------
---1. Display all customers
SELECT * FROM customers
---2. Display only customer names
SELECT customer_name FROM customers
---3. Display customer name and city
SELECT customer_name,city FROM customers
---4. Display all employee names and salaries
SELECT emp_name,salary FROM Employees
---5. Display all product name and their prices
SELECT product_name,price FROM products
---6. Display all orders with their order amount
SELECT order_id,order_amount FROM orders
---7. Display customers who live in Mumbai
SELECT * FROM customers WHERE city = 'Mumbai'
---8. Display employees whose salary is greater than ₹100,000
SELECT * FROM Employees WHERE salary > 100000
---9. Display products costing more than ₹10,000
SELECT * FROM products WHERE price > 10000
---10. Display orders where the order amount is less than ₹1,000
SELECT * FROM orders WHERE order_amount < 1000


--------------------------Intermediate Level Interview Questions---------------------------------------------------
---11. Display IT employees
SELECT * FROM Employees WHERE department IN ('IT')
---12. Display employees from Delhi earning more than ₹100,000
SELECT * FROM Employees WHERE city IN ('Delhi') AND salary > 10000
---13. Display employees from IT or HR
SELECT * FROM Employees WHERE department IN ('IT','HR')
---14. Display products priced between ₹1,000 and ₹10,000
SELECT * FROM products WHERE price BETWEEN 1000 AND 10000 
---15. Display customers from Mumbai, Delhi, or Bangalore
SELECT * FROM customers WHERE city IN ('Mumbai','Delhi','Bangalore')
---16. Display successful UPI payments
SELECT * FROM Payments1 WHERE payment_mode = 'UPI' AND payment_status = 'Success'
---17. Display active employees
SELECT * FROM Employees WHERE status IN ('Active')
---18. Display employees whose department is NULL
SELECT * FROM Employees WHERE department IS NULL
---19. Display employees whose email is NULL
SELECT * FROM Employees WHERE email IS NULL
---20. Display products from the Electronics category costing more than ₹5,000
SELECT * FROM products WHERE category IN ('Electronics') and price > 5000

--------------------------------Analytical Based Interview Questions------------------------------------------------------------
---21. Find all orders placed by customer 101 having an amount greater than ₹500
SELECT * FROM orders WHERE customer_id IN ('101') AND order_amount > 500
---22. Find orders having a negative order amount
SELECT * FROM orders WHERE order_amount < 0
---23. Find employees who are Active and earn more than ₹120,000
SELECT * FROM Employees WHERE status IN ('Active') and salary > 120000
---24. Find employees who are either from Delhi or Mumbai and have a salary greater than ₹60,000
SELECT * FROM Employees WHERE city IN ('Delhi','Mumbai') AND salary > 60000
---25. Find Electronics products costing between ₹10,000 and ₹80,000
SELECT * FROM products WHERE category IN ('Electronics') AND price BETWEEN 10000 AND 80000
---26. Find all successful payments that are not UPI payments
SELECT * FROM Payments1 WHERE payment_status = 'Success' AND payment_mode NOT IN ('UPI')
---27. Find employees who have either a NULL department or a NULL email
SELECT * FROM Employees WHERE department IS NULL OR email IS NULL
---28. Find customers whose city is not Mumbai, Delhi, or Bangalore
SELECT * FROM customers WHERE city NOT IN ('Mumbai','Delhi','Bangalore')
---29. Find orders placed in July 2026
SELECT * FROM orders WHERE YEAR(order_date) = '2026' AND MONTH(order_date) = '07'
---30. Find customers whose names start with the letter A
SELECT * FROM customers WHERE customer_name LIKE 'A%'

--------------------------Coding Interview Questions--------------------------------------------------
---31. Find all employees earning between ₹60,000 and ₹100,000
SELECT * FROM Employees WHERE salary BETWEEN 60000 AND 100000
---32. Find all employees from Bangalore whose status is Active
SELECT * FROM Employees WHERE city IN ('Bangalore') AND status IN ('Active')
---33. Find all products that are NOT in the Electronics category
SELECT * FROM products WHERE category NOT IN ('Electronics')
---34. Find all orders between ₹1,000 and ₹3,000
SELECT * FROM orders WHERE order_amount BETWEEN 1000 AND 3000
---35. Find all customers whose names end with a
SELECT * FROM customers WHERE customer_name LIKE '%a'
---36. Find employees whose names contain the letter i
SELECT * FROM Employees WHERE emp_name LIKE '%i%'
---37. Find all successful payments made using either Credit Card or Debit Card
SELECT * FROM Payments1 WHERE payment_status = 'Success' and payment_mode IN ('Credit Card','Debit Card')
---38. Find all orders of customer 101 or 102 having an amount greater than ₹1,000
SELECT * FROM orders WHERE customer_id IN ('101','102') AND order_amount > 1000
---39. Find employees who are Active and belong to either IT or Finance
SELECT * FROM Employees WHERE status IN ('Active') AND department IN ('IT','Finance')
---40. Find products whose price is greater than ₹5,000 and whose category is either Electronics or Furniture
SELECT * FROM products WHERE price > 5000 AND category IN ('Electronics','Furniture')