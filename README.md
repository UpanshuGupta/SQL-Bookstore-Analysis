Bookstore Database Analysis (SQL)
A professional SQL project focused on analyzing sales trends, customer behavior, and inventory management for an online bookstore using PostgreSQL.

Tech Stack
* Database: PostgreSQL

* Tool: pgAdmin 4 / DBeaver

* Language: SQL

Database Schema (ER Logic)
* The project consists of three interconnected tables:

* Books: Details about titles, authors, genres, and pricing.

* Customers: Information about customer locations and identities.

Orders: Transactional data linking customers to books.

Repository Structure
* 01_db_setup_and_data.sql: Database schema definition and sample data insertion.

* 02_analytical_queries.sql: Business logic and data insights queries.

Key Features Implemented
* Relational Joins: Successfully linked Customers, Books, and Orders to map purchase history.

* Data Aggregation: Used SUM(), AVG(), and COUNT() to calculate revenue and sales performance.

* Advanced Filters: Applied HAVING and LIMIT to identify top performers and high-value transactions.

* Inventory Management: Used COALESCE to handle null values and track remaining stock accurately.

Business Questions Solved
* Which author has the highest total book sales?

* Who are the "Top Spenders" with a lifetime value over 900?

* Which genres are driving the most revenue for the store?

* What is the current stock remaining after all orders are processed?

How to Run
* Execute 01_db_setup_and_data.sql to build the database environment.

* Run 02_analytical_queries.sql to generate analytical reports.
