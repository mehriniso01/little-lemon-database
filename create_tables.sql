
CREATE TABLE Customer (
    customer_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    phone TEXT,
    email TEXT
);

CREATE TABLE Reservation (
    reservation_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    date DATE,
    time TIME,
    guests INTEGER,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE MenuItem (
    item_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT,
    price REAL
);

CREATE TABLE Staff (
    staff_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    role TEXT
);

CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    staff_id INTEGER,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

CREATE TABLE OrderDetails (
    order_id INTEGER,
    item_id INTEGER,
    quantity INTEGER,
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES MenuItem(item_id)
);
