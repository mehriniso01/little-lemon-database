
-- 1. All upcoming reservations
SELECT name, date, time, guests
FROM Reservation
JOIN Customer ON Reservation.customer_id = Customer.customer_id
WHERE date >= DATE('now');

-- 2. Total amount per order
SELECT Orders.order_id, Customer.name, SUM(MenuItem.price * OrderDetails.quantity) AS total_amount
FROM Orders
JOIN Customer ON Orders.customer_id = Customer.customer_id
JOIN OrderDetails ON Orders.order_id = OrderDetails.order_id
JOIN MenuItem ON OrderDetails.item_id = MenuItem.item_id
GROUP BY Orders.order_id;

-- 3. Staff-wise order count
SELECT Staff.name, COUNT(Orders.order_id) AS total_orders
FROM Orders
JOIN Staff ON Orders.staff_id = Staff.staff_id
GROUP BY Staff.name;
