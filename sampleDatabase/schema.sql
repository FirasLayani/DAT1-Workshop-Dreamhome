.open sampleDatabase/sampleDatabase.sqlite
.mode column

-- Drop existing tables
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS voters;
DROP TABLE IF EXISTS books;

-- Create tables
CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL DEFAULT 'No Surname',
    email TEXT UNIQUE,
    phone TEXT NOT NULL CHECK (LENGTH(phone) >= 10) 
);

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    list_price DECIMAL (10,2) NOT NULL CHECK (list_price >= discount AND list_price >= 0),
    discount DECIMAL (10,2) NOT NULL CHECK (discount >= 0)
);

CREATE TABLE voters (
    voter_id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER CHECK (age >= 18),
    dob DATE
);

CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    price INTEGER,
    disc_price INTEGER,
    description VARCHAR(1000)

-- Insert into tables
INSERT INTO contacts (contact_id, first_name, last_name, email, phone)
VALUES (1, 'Toppat', 'King', 'toppat@ada.ac.uk', '07123456789');

INSERT INTO contacts (contact_id, first_name, last_name, email, phone)
VALUES (2, 'Person2', 'Surname2', 'person2@ada.ac.uk', '07999999999');

INSERT INTO voters (voter_id, name, age, dob)
VALUES (1, 'Toppat King', 19, '31/12/2024');

-- Query tables
SELECT * FROM contacts;
SELECT * FROM voters;
SELECT * FROM books;