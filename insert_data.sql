
-- Customers
INSERT INTO Customer VALUES (1, 'Alice Smith', '123456789', 'alice@example.com');
INSERT INTO Customer VALUES (2, 'Bob Johnson', '987654321', 'bob@example.com');

-- Reservations
INSERT INTO Reservation VALUES (1, 1, '2025-05-10', '19:00', 4);
INSERT INTO Reservation VALUES (2, 2, '2025-05-11', '20:00', 2);

-- Menu items
INSERT INTO MenuItem VALUES (1, 'Margherita Pizza', 'Main Course', 12.99);
INSERT INTO MenuItem VALUES (2, 'Tiramisu', 'Dessert', 6.50);

-- Staff
INSERT INTO Staff VALUES (1, 'John Manager', 'Manager');
INSERT INTO Staff VALUES (2, 'Emily Waiter', 'Waiter');

-- Orders
INSERT INTO Orders VALUES (1, 1, 2, '2025-05-10');
INSERT INTO Orders VALUES (2, 2, 2, '2025-05-11');

-- OrderDetails
INSERT INTO OrderDetails VALUES (1, 1, 2);  -- 2 pizzas
INSERT INTO OrderDetails VALUES (1, 2, 1);  -- 1 dessert
