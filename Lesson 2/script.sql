psql -h localhost -p 5432 -U postgres
\l

CREATE DATABASE SalesAnalytics;

\c salesanalytics
CREATE TABLE customerList (
customerID INT NOT NULL PRIMARY KEY,
firstName VARCHAR(50),
lastName VARCHAR(50),
phoneNumber VARCHAR(12),
payingCustomer VARCHAR(1),
doNotContact VARCHAR(1),
streetAddress VARCHAR(255),
state VARCHAR(255)
);
 
INSERT INTO customerList (
customerID, firstName, lastName, phoneNumber, payingCustomer, doNotContact, streetAddress
)
VALUES (
1021, 'Oluwatomi', 'Omotoso','813-273-5926','Y','N','123 Road ABC', 'Abuja'
),
(
1022,'Mark', 'Anthony','801-234-5678','Y','N','ABC Road 123','Lagos'
),
(
1023, 'David','Livingstone','123-456-7890','N','N','House 13 Herbert Ave.','Jos'
);



