INSERT INTO Members (name, email, phone) VALUES
 ('Rahul Verma', 'rahul@email.com', '9876543210'),
 ('Anita Sharma', 'anita@email.com', NULL),
 ('Vikas Kumar', 'vikas@email.com', '8887776666'),
 ('Neha Gupta', 'neha@email.com', '9991112222'),
 ('Sandeep Singh', 'sandeep@email.com', NULL);

INSERT INTO Authors (name, country) VALUES
('Paulo Coelho', 'Brazil'),
('Chetan Bhagat', 'India'),
('J.K. Rowling', 'UK'),
('George Orwell', 'UK'),
('Agatha Christie', 'UK');

INSERT INTO Books (title, genre, published_year, available_copies) VALUES
('The Alchemist', 'Fiction', 1988, 5),
('Five Point Someone', 'Drama', 2004, 3),
('Harry Potter and the Philosopher''s Stone', 'Fantasy', 1997, 10),
('1984', 'Dystopian', 1949, 4),
('Murder on the Orient Express', 'Mystery', 1934, 2);

INSERT INTO BookAuthors (book_id, author_id) VALUES
(1, 1), -- The Alchemist ↔ Paulo Coelho
(2, 2), -- Five Point Someone ↔ Chetan Bhagat
(3, 3), -- Harry Potter ↔ J.K. Rowling
(4, 4), -- 1984 ↔ George Orwell
(5, 5); -- Murder on the Orient Express ↔ Agatha Christie

INSERT INTO Loans (member_id, book_id, loan_date, return_date) VALUES
(1, 1, '2025-09-20', NULL),   -- Rahul borrowed The Alchemist
(2, 2, '2025-09-21', '2025-09-22'), -- Anita borrowed and returned Five Point Someone
(3, 3, '2025-09-22', NULL),   -- Vikas borrowed Harry Potter
(4, 4, '2025-09-22', NULL),   -- Neha borrowed 1984
(5, 5, '2025-09-23', NULL);   -- Sandeep borrowed Murder on the Orient Express

SELECT * FROM MEMBERS;
SELECT * FROM LOANS ,Authors,books; 
