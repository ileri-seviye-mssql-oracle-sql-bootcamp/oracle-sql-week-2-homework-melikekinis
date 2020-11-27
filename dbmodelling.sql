DROP TABLE melike.sales_orders;
DROP TABLE melike.customers;
DROP TABLE melike.customer_address;

-- 1. TABLO

CREATE TABLE melike.customers (
    customer_id INT,
    address_id INT,
    first_name VARCHAR2 (255),
    last_name VARCHAR2 (255),
    phone VARCHAR2 (25),
    email VARCHAR2 (255),
    occupation VARCHAR2(50)
);

-- 2. TABLO

CREATE TABLE melike.customer_address (
address_id INT,
address_line varchar2(250),
city varchar2(50),
state varchar2(50),
country varchar2(50),
zip_code VARCHAR2 (5)
);

-- 3. TABLO

CREATE TABLE melike.sales_orders (
    order_id INT,
    customer_id INT,
    order_status VARCHAR2(50),
    -- Order status: 1 = Pending; 2 = Processing; 3 = Rejected; 4 = Completed
    order_date DATE,
    shipped_date DATE
);



-- PK & FK

ALTER TABLE MELIKE.CUSTOMERS ADD 
CONSTRAINT CUSTOMERS_PK
 PRIMARY KEY (CUSTOMER_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE MELIKE.CUSTOMER_ADDRESS ADD 
CONSTRAINT CUSTOMER_ADDRESS_PK
 PRIMARY KEY (ADDRESS_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE MELIKE.SALES_ORDERS ADD 
CONSTRAINT SALES_ORDERS_PK
 PRIMARY KEY (ORDER_ID)
 ENABLE
 VALIDATE;

ALTER TABLE MELIKE.CUSTOMERS ADD 
CONSTRAINT CUSTOMER_ADDRESS_FK
 FOREIGN KEY (ADDRESS_ID)
 REFERENCES MELIKE.CUSTOMER_ADDRESS (ADDRESS_ID)
 ENABLE
 VALIDATE;

ALTER TABLE MELIKE.SALES_ORDERS ADD 
CONSTRAINT SALES_ORDERS_CUSTOMER_FK
 FOREIGN KEY (CUSTOMER_ID)
 REFERENCES MELIKE.CUSTOMERS (CUSTOMER_ID)
 ENABLE
 VALIDATE;

-- SYNONYM

DROP SYNONYM syn_customers;

CREATE SYNONYM syn_customers
FOR melike.customers;

select * from melike.customers;

select * from syn_customers;

-- VIEW

CREATE OR REPLACE VIEW melike.v_customer_contact
AS
SELECT c.first_name, c.last_name, c.phone, c.email, ca.city, ca.state, ca.country
FROM melike.customers c
LEFT JOIN melike.customer_address ca
    ON c.address_id = ca.address_id;

SELECT * FROM melike.v_customer_contact;


--INSERT STATEMENTS--

Insert into CUSTOMERS
   (CUSTOMER_ID, ADDRESS_ID, FIRST_NAME, LAST_NAME, PHONE, 
    EMAIL, OCCUPATION)
 Values
   (1, 1, 'Selin', 'Çelen', '5634443232', 
    'selincelen@hotmail.com', 'Mühendis');
Insert into CUSTOMERS
   (CUSTOMER_ID, ADDRESS_ID, FIRST_NAME, LAST_NAME, PHONE, 
    EMAIL, OCCUPATION)
 Values
   (2, 3, 'Ahmet', 'Toprak', '5324365577', 
    'ahmettoprak@hotmail.com', 'Madenci');
Insert into CUSTOMERS
   (CUSTOMER_ID, ADDRESS_ID, FIRST_NAME, LAST_NAME, PHONE, 
    EMAIL, OCCUPATION)
 Values
   (3, 3, 'Emine', 'Toprak', '5442223331', 
    'eminetoprak@gmail.com
', 'Astronot');
COMMIT;


Insert into CUSTOMER_ADDRESS
   (ADDRESS_ID, ADDRESS_LINE, CITY, STATE, COUNTRY, 
    ZIP_CODE)
 Values
   (1, NULL, 'Aydin', 'Sultanhisar', 'TR', 
    '09111');
Insert into CUSTOMER_ADDRESS
   (ADDRESS_ID, ADDRESS_LINE, CITY, STATE, COUNTRY, 
    ZIP_CODE)
 Values
   (2, NULL, 'Istanbul', 'Besiktas', 'TR', 
    '34111');
Insert into CUSTOMER_ADDRESS
   (ADDRESS_ID, ADDRESS_LINE, CITY, STATE, COUNTRY, 
    ZIP_CODE)
 Values
   (3, NULL, 'Istanbul', 'Besiktas', 'TR', 
    '34111');
COMMIT;



Insert into SALES_ORDERS
   (ORDER_ID, CUSTOMER_ID, ORDER_STATUS, ORDER_DATE, SHIPPED_DATE)
 Values
   (1, 3, 'Gönderildi', TO_DATE('11/25/2020 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('11/30/2020 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into SALES_ORDERS
   (ORDER_ID, CUSTOMER_ID, ORDER_STATUS, ORDER_DATE, SHIPPED_DATE)
 Values
   (2, 3, 'Beklemede', TO_DATE('11/27/2020 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL);
Insert into SALES_ORDERS
   (ORDER_ID, CUSTOMER_ID, ORDER_STATUS, ORDER_DATE, SHIPPED_DATE)
 Values
   (3, 1, 'Hazirlaniyor', TO_DATE('11/27/2020 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL);
COMMIT;






