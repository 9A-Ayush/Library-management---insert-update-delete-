USE LibraryDB;
-- Insert Categories
INSERT INTO Categories (name) VALUES 
('Drama'),
('Thriller');

-- Insert Authors
INSERT INTO Authors (name) VALUES 
('Dan Brown'),
('Harper Lee');

-- Insert Books (One with NULL published year)
INSERT INTO Books (title, category_id, published_year) VALUES 
('The Da Vinci Code', 2, 2003),
('Angels & Demons', 2, NULL); -- NULL published year

-- Insert into BookAuthors
INSERT INTO BookAuthors (book_id, author_id) VALUES
(5, 4),  -- The Da Vinci Code by Dan Brown
(6, 4);  -- Angels & Demons by Dan Brown

-- Insert Members (One with default values)
INSERT INTO Members (name, email, membership_date) VALUES
('Diana Prince', 'diana@example.com', '2023-09-01'),
('Clark Kent', 'clark@example.com', CURDATE());  -- Default to today's date

-- Insert Loans (One with NULL return_date)
INSERT INTO Loans (book_id, member_id, loan_date, return_date) VALUES
(5, 4, '2024-06-20', NULL), -- Not yet returned
(6, 5, '2024-06-22', '2024-06-25');

-- Update the data
UPDATE Books
SET published_year = 2000
WHERE book_id = 6;

UPDATE Members
SET email = 'superman@example.com'
WHERE member_id = 5;

SELECT * FROM Books WHERE title = 'The Da Vinci Code';
SELECT * FROM Members WHERE membership_date < '2023-07-01';