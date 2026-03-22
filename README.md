# SQL-Bookstore-Analysis

Bookstore Database Analysis (SQL)
A comprehensive SQL project focused on analyzing sales, customer behavior, and inventory management for an online bookstore. This project demonstrates intermediate to advanced SQL skills including multi-table joins, data aggregation, and conditional filtering.

Project Overview
The goal of this project was to transform raw bookstore data into actionable business insights. I designed a relational database with three core tables and performed various analytical queries to solve real-world business problems.

Tech Stack & Tools
Database Engine: PostgreSQL

Management Tool: pgAdmin 4 / DBeaver

Language: SQL

Repository Structure
01_db_setup_and_data.sql: Contains the complete schema definition (CREATE TABLE) and the sample dataset (INSERT INTO) for Books, Customers, and Orders.
02_analytical_queries.sql: Features 20+ business queries ranging from basic data retrieval to complex aggregations.

Key SQL Features Implemented
Complex Joins: Combined data from multiple tables to map customer purchases to specific book genres.
Aggregations & Grouping: Used SUM(), AVG(), and COUNT() with GROUP BY to calculate total revenue and sales volume.
Advanced Filtering: Applied HAVING clauses for post-aggregation filtering and LIMIT for top-performer analysis.
Data Integrity: Used COALESCE to handle null values and maintain accurate stock reporting.
Business Insights Extracted
Revenue Analysis: Calculated total revenue generated and identified high-value orders (over 700).
Customer Behavior: Identified "Top Spenders" who contributed significantly to sales (purchases over 900).
Inventory Tracking: Monitored stock levels to identify books needing restock and calculated remaining inventory post-sales.

Genre Performance: Analyzed which genres (Finance, Fiction, etc.) are driving the most volume.
