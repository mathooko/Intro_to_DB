CREATE DATABASE IF NOT EXISTS alx_book_store;
CREATE TABLE Books(book _id number (10) Constraint books_book_id_pk PRIMARY KEY,
                    title varchar (130),
                    author_id NUMBER(10) foreign key references Authors(author_id),
                    price DOUBLE(9,2),
                    publication_date DATE
                    )

CREATE TABLE Authors(author_id number (10) CONSTARAINT AUTHORS_AUTHOR_ID_PK PRIMARY KEY,
                    author_name varchar (50)
                    );
CREATE TABLE Customers(customer_id number (10) CONSTRAINT customers_customer_id_pk PRIMARY KEY,
                        customer_name VARCHAR(215),
                        email VARCHAR(215),
                        address TEXT
                        );

CREATE TABLE Orders(order_id number (10) CONSTRAINT Orders_order_id_pk PRIMARY KEY,
                    customer_id NUMBER (10) FOREIGN KEY REFERENCES CUSTOMERS(Customer_id),
                    order_date DATE
                    );

CREATE TABLE Order_Details(
                    order_detail_id(10) CONSTRAINT Order_Details_order_details_id_pk PRIMARY KEY,
                    order_id NUMBER (10) REFERENCES ORDERS(order_id)
                    book_id NUMBER (10) REFERENCES BOOK(book_id)
                    quantity NUMBER (10,10)
                    );