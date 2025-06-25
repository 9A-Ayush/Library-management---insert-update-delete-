Task 2: Data Insertion and Handling Nulls – LibraryDB

Objective: Practice inserting, updating, and deleting data

Tools: DB Fiddle / SQLiteStudio

Deliverables: SQL file with INSERT, UPDATE, DELETE statements

Summary of SQL Actions

- Inserted categories, authors, books (with NULL), members (with CURDATE()), and loans

(with NULL return_date).

- Updated published_year and member email.

- Used SELECT to verify data changes.

Example Snippets

-- Insert Books

INSERT INTO Books (title, category_id, published_year) VALUES

('The Da Vinci Code', 2, 2003),

('Angels & Demons', 2, NULL);

-- Update Book Year

UPDATE Books SET published_year = 2000 WHERE book_id = 6;

-- Insert Member with default date

INSERT INTO Members (name, email, membership_date) VALUES

('Clark Kent', 'clark@example.com', CURDATE())

Update Member Email

UPDATE Members SET email = 'superman@example.com' WHERE member_id = 5;

-- Select for Validation

SELECT * FROM Books WHERE title = 'The Da Vinci Code';

SELECT * FROM Members WHERE membership_date < '2023-07-01';

Outcome: A clean, consistent database with proper handling of NULL and default values.
