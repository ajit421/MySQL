CREATE TABLE IF NOT EXISTS orders (
    orderid INT NOT NULL PRIMARY KEY,
    customername VARCHAR(20),
    customerphone VARCHAR(20) NOT NULL,
    productlist VARCHAR(255),
    quantities INT,
    totalamount DECIMAL(10, 2)
);

INSERT INTO orders 
(orderid, customername, customerphone, productlist, quantities, totalamount)
VALUES 
(1001, "Sam smith", "9876543210", "pen", 2, 25.00),
(1002, "jane doe", "9123456789", "notbook", 3, 30.00);


