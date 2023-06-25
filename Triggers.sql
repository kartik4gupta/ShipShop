use SHIPSHOP;
DROP TRIGGER IF EXISTS after_order_insert_update_stock;
DROP TRIGGER IF EXISTS after_insert_oi_update_order_total;
#Triggers

#Trigger 1
#The following trigger updates product stock when an order is placed:

DELIMITER ^^
CREATE TRIGGER after_order_insert_update_stock
AFTER INSERT ON order_items
FOR EACH ROW
BEGIN
    DECLARE new_stock INT;
    SET new_stock = (SELECT Stock - NEW.Quantity FROM Product WHERE id = NEW.p_id);
    IF new_stock < 0 THEN
        INSERT INTO order_items (order_id, p_id, Quantity) VALUES (NEW.order_id, NEW.p_id, 0);
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient stock';


    ELSE
        UPDATE Product
        SET Stock = new_stock
        WHERE id = NEW.p_id;
    END IF;
END ^^
DELIMITER ;

#Stock of jeans before placing order=0:
select * from Product where id=6001 or id=6000

insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5101, 'Apt 578', 2863, 121, 4100, 0, 'Credit Card', 1000, 2100);

insert into order_items (order_id, p_id, Quantity) values (5101, 6001, 4);
insert into order_items (order_id, p_id, Quantity) values (5101, 6000, 1);



# order for only item id 6000 placed as item id 6001 was out of stock/not in sufficient quantity. 
select * from Product where id=6001 or 6000

delete from Orders where id>5100
select * from Orders where id>5100
select * from order_items where order_id>5100


#Trigger 2
#Updates Orders Total when an order item is added or updated in order_items:
DELIMITER ^^
CREATE TRIGGER after_insert_oi_update_order_total
AFTER INSERT ON order_items
FOR EACH ROW
BEGIN
    UPDATE Orders
    SET Total = (
        SELECT SUM(Quantity * Price)
        FROM order_items oi
        JOIN Product p ON oi.p_id = p.id
        WHERE oi.order_id = NEW.order_id
    )
    WHERE id = NEW.order_id;
END ^^
DELIMITER ;


#Trigger 3
#Capitalizes the first character of a name in a Customer table.
DELIMITER ^^
CREATE TRIGGER capitalize_names
BEFORE INSERT ON Customer
FOR EACH ROW
BEGIN
  SET NEW.FirstName = CONCAT(UPPER(LEFT(NEW.FirstName, 1)), SUBSTRING(NEW.FirstName, 2));
  SET NEW.MiddleName = CONCAT(UPPER(LEFT(NEW.MiddleName, 1)), SUBSTRING(NEW.MiddleName, 2));
  SET NEW.LastName = CONCAT(UPPER(LEFT(NEW.LastName, 1)), SUBSTRING(NEW.LastName, 2));
END^^
DELIMITER ;

show triggers
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2105, 'niin', 'nndras', 'nuillard', 'aguillard2@bbo.uk', '032 Mariners Cove Drive', '1516781806', 'rcRWtKbQEQAE', 1000);
select * from customer
delete from customer where id=2105



