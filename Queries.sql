use SHIPSHOP;


#Query 1
#Displays orders that have Less than or equal to 1 day delivery along with customers firstName taken from customer table and order total.
SELECT Orders.id AS ID, Customer.FirstName AS Name, Orders.Delivery_Time , Orders.Total
From Orders
INNER JOIN Customer ON Orders.C_id=Customer.id AND Orders.Delivery_Time<=1 ;

#Query 2
#Displays orders of value greater than ₹1500 but less than ₹3000 along with customer Firstname and shipping agent Firstname.
SELECT Orders.id AS ID, Customer.FirstName AS Name, Shipping_Agent.FirstName , Orders.Total
From Orders 
INNER JOIN Customer ON Orders.C_id=Customer.id 
INNER JOIN Shipping_Agent ON Shipping_Agent.id=Orders.S_id 
WHERE Orders.Total>=1500 AND Orders.Total<=3000;

#Query 3
#Displays Shipping agents with 4-star+ rating in descending order
SELECT id, FirstName, Rating FROM Shipping_Agent
Where Rating>4.00
ORDER BY Rating DESC;

#Query 4
#Displays orders with discount greater than 300 along with customer Firstname and shipping agent Firstname.
SELECT Orders.id AS ID, Customer.FirstName AS Name, Shipping_Agent.FirstName , Orders.Total, Orders.Discount
From Orders 
INNER JOIN Customer ON Orders.C_id=Customer.id 
INNER JOIN Shipping_Agent ON Shipping_Agent.id=Orders.S_id 
WHERE Orders.Discount>=300;


#Query 5
#Ranking customers on the basis of their total spending, (Special coupons can be given to the top spenders)
SELECT Customer.FirstName, SUM(Orders.Total) AS Total_Spending FROM Orders
LEFT JOIN Customer ON Customer.id=Orders.C_id
GROUP BY FirstName
ORDER BY Total_Spending DESC;


#Query 6
#Displays Shipping Agent Name, ID, and the number of orders that they have at the moment.
SELECT Shipping_Agent.FirstName, COUNT(Orders.id) AS Orders_Assigned FROM Orders
LEFT JOIN Shipping_Agent ON Orders.S_id = Shipping_Agent.id
GROUP BY FirstName;



#Query 7
#Displays all products in a specific category
SELECT Product.Name, Product.Price, Category.Name AS Category, Product.Stock
FROM Product
INNER JOIN Category ON Product.Cat_id = Category.id
WHERE Category.Name = "Clothing";


#Query 8
#Displays Products with stock less than 30 for re-stocking purposes.
SELECT Product.Name, Product.Price, Category.Name AS Category, Product.Stock
FROM Product
INNER JOIN Category ON Product.Cat_id = Category.id
WHERE Product.Stock<=30;


#Query 9
#Update the stock of a product that has stock less than 30.
UPDATE Product
SET Product.Stock=Product.Stock+1
WHERE id IN(
	SELECT id 
    FROM(
	SELECT Product.id
	FROM Product
	INNER JOIN Category ON Product.Cat_id = Category.id
	WHERE Product.Stock<=30)
    AS subquery
);

#One can see that the stock of products with least stock has been incremented by 1.
#Displays Products with stock less than 30 for re-stocking purposes. ie. NOW DISPLAYS UPDATED STOCK AFTER RESTOCKING.
SELECT Product.Name, Product.Price, Category.Name AS Category, Product.Stock
FROM Product
INNER JOIN Category ON Product.Cat_id = Category.id
WHERE Product.Stock<=30;


#Query 10
#updates the Orders table based on the products purchased in the Purchased table, and the actual prices of those products are to be taken from the Product table
UPDATE orders
INNER JOIN (
  SELECT orders.id AS order_id, SUM(product.price * order_items.quantity) AS total_cost
  FROM orders
  INNER JOIN order_items ON orders.id = order_items.order_id
  INNER JOIN product ON order_items.p_id = product.id
  GROUP BY orders.id
) AS order_total_cost ON orders.id = order_total_cost.order_id
SET orders.Total = order_total_cost.total_cost;


#Query 11
#Sets Discount as 20% of the total amount.
SET SQL_SAFE_UPDATES=0;
UPDATE orders
SET orders.Discount = Orders.total*0.2;
SET SQL_SAFE_UPDATES=1;
SELECT * FROM Orders;


#Query 12
#Gives List of those customers who have placed atleast 1 order.
SELECT FirstName
FROM Customer
WHERE EXISTS (SELECT * FROM Orders WHERE Orders.C_id = Customer.id);
