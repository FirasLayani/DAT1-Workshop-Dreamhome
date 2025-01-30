.open petSystem/petDatabase.sqlite
.mode COLUMN

-- Drop tables if already exists

-- Create tables
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    address TEXT