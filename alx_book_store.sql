CREATE DATABASE IF NOT EXISTS alx_book_store;
CREATE TABLE BOOKS(book _id number (10) Constraint books_book_id_pk PRIMARY KEY,
                    title varchar (130),
                    author_id NUMBER(10),
                    price DOUBLE(9,2),
                    publication_date DATE
                    )