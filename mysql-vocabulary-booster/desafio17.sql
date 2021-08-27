USE w3schools;
DELIMITER $$

CREATE TRIGGER trigger_insert_order_date
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = Date(NOW());
END $$

DELIMITER ;
