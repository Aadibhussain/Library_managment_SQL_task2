# Library_managment_SQL_task2
This project is a MySQL-based Library Management System.
It contains tables for members, authors, books, relationships between books and authors, and loans.
Sample data is provided for testing queries.

⚙️ Setup Instructions

Create the database

CREATE DATABASE librarydb;
USE librarydb;


Create tables
(Members, Authors, Books, BookAuthors, Loans)

Each table has primary keys.

Foreign keys enforce relationships.

Insert sample data
Run the provided insert statements to populate:

Members

Authors

Books

BookAuthors

Loans

Example:

INSERT INTO Members (name, email, phone) VALUES
 ('Rahul Verma', 'rahul@email.com', '9876543210'),
 ('Anita Sharma', 'anita@email.com', NULL);

📥 Data Included

5 Members (Rahul, Anita, Vikas, Neha, Sandeep)

5 Authors (Paulo Coelho, J.K. Rowling, etc.)

5 Books (The Alchemist, Harry Potter, etc.)

Book–Author relationships

Loan records (who borrowed which book, and return status)

▶️ How to Run

Save everything in librarydb.sql and run:

mysql -u root -p < librarydb.sql

🔍 Example Queries

Some useful queries you can try after inserting values:

List all members:

SELECT * FROM Members;


Show all borrowed books:

SELECT m.name, b.title, l.loan_date, l.return_date
FROM Loans l
JOIN Members m ON l.member_id = m.member_id
JOIN Books b ON l.book_id = b.book_id
WHERE l.return_date IS NULL;


Count available copies of each book:

SELECT title, available_copies FROM Books;

✅ Features

Tracks members, authors, books, and loans

Supports many-to-many author–book relationships

Maintains referential integrity with foreign keys

Includes sample data for testing
