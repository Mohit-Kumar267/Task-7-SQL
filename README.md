1.Use CREATE VIEW with complex SELECT
2.Use views for abstraction and security

1. Using CREATE VIEW with Complex SELECT
A view in SQL is a virtual table created using a SELECT query. It doesn’t store data itself, but shows data from one or more underlying tables based on the query.
When we use a complex SELECT in a view, we can:
Combine data from multiple tables using JOINs
Use aggregations, functions, and computed columns
Apply filters, grouping, and sorting

2. Using Views for Abstraction and Security
✅ Abstraction

Views allow users to interact with simplified representations of the data.
The underlying schema complexity (like multiple joins, computed fields) is hidden.
Developers or analysts can query the view without needing to understand the raw table structure.

✅ Security

Views can restrict access to sensitive data.
You can hide specific columns or rows based on conditions.
Access can be granted to views without granting access to the original tables.

Example:
Let’s say we have an employees table with sensitive data like salary and personal info.
