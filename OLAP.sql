use shipshop;

#OLAP Query 1
#Total sales by category and product, rolled up by category and overall:
SELECT 
    c.Name AS Category,
    p.Name AS Product,
    SUM(oi.Quantity * p.Price) AS Sales
FROM 
    Category c
    JOIN Product p ON c.id = p.Cat_id
    JOIN order_items oi ON p.id = oi.p_id
GROUP BY 
    c.Name, 
    p.Name WITH ROLLUP;


#OLAP Query 2
#Drilldown on orders by category:
SELECT c.Name, COUNT(*) AS num_orders
FROM Orders o
JOIN order_items oi ON o.id = oi.order_id
JOIN Product p ON oi.p_id = p.id
JOIN Category c ON p.Cat_id = c.id
GROUP BY c.Name;

#OLAP QUERY 3
#Total revenue by category, product, and customer:
SELECT c.id as customer_id, CONCAT(c.FirstName, ' ', c.MiddleName, ' ', c.LastName) as customer_name, cat.Name as category, p.Name as product, SUM(oi.Quantity * p.Price) as revenue
FROM Customer c
INNER JOIN Orders o ON c.id = o.C_id
INNER JOIN order_items oi ON o.id = oi.order_id
INNER JOIN Product p ON oi.p_id = p.id
INNER JOIN Category cat ON p.Cat_id = cat.id
GROUP BY c.id, cat.id, p.id
ORDER BY revenue DESC;


#OLAP QUERY 4
#Gives a list of top 20 customers on the basis of number of orders placed.
SELECT CONCAT(c.FirstName, ' ', IFNULL(c.MiddleName, ''), ' ', c.LastName) AS Customer_name, COUNT(*) AS order_count
FROM Customer c
INNER JOIN Orders o ON c.id = o.C_id
GROUP BY c.id
ORDER BY order_count DESC
LIMIT 20;



#OLAP Query 5
#The given query returns a result set that combines the total quantity of each product ordered in each order.
SELECT order_id, NULL as p_id, SUM(Quantity)
From order_items
GROUP BY order_id
UNION ALL
SELECT NULL as order_id,p_id,SUM(Quantity)
FROM order_items
GROUP BY p_id
UNION ALL
SELECT order_id,p_id,SUM(Quantity)
From order_items
GROUP BY order_id,p_id


#OLAP Query 6
#Ranking customers on the basis of their total spending, (Special coupons can be given to the top spenders)
SELECT Customer.FirstName, SUM(Orders.Total) AS Total_Spending FROM Orders
LEFT JOIN Customer ON Customer.id=Orders.C_id
GROUP BY FirstName
ORDER BY Total_Spending DESC;

#OLAP QUERY 7
#OLAP query that shows quantity of goods delivered with a particular rating (in ranges 1-2, 2-3, 3-4 and 4-5). 
SELECT sa.FirstName AS Shipping_Agent,
       SUM(CASE WHEN sa.Rating BETWEEN 1 AND 2 THEN oi.Quantity ELSE 0 END) AS '1-2',
       SUM(CASE WHEN sa.Rating BETWEEN 2 AND 3 THEN oi.Quantity ELSE 0 END) AS '2-3',
       SUM(CASE WHEN sa.Rating BETWEEN 3 AND 4 THEN oi.Quantity ELSE 0 END) AS '3-4',
       SUM(CASE WHEN sa.Rating BETWEEN 4 AND 5 THEN oi.Quantity ELSE 0 END) AS '4-5'
FROM Orders o
JOIN Shipping_Agent sa ON o.S_id = sa.id
JOIN order_items oi ON o.id = oi.order_id
GROUP BY sa.id;




