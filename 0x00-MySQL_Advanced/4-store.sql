-- Task 4  buy buy buy
-- A script that creates a trigger that decreases the quantity of an item after adding a NEW order.

CREATE TRIGGER update_items AFTER INSERT
ON orders
FOR EACH ROW
UPDATE items
    SET quantity = quantity - NEW.number
    where name = NEW.item_name;