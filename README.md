# Online-retail-database-management-system
Overview:
--------
This project implements a SQL-based database system for an online retail platform. It is designed to manage customers, products, orders, and provide actionable business insights using advanced SQL features such as stored procedures, triggers, and views.

The database is modeled to handle real-world e-commerce operations, supporting:

Customer & product management
Order processing with automatic stock updates
Analytical dashboards for sales performance and inventory tracking

Features:
---------
Normalized schema for efficient data storage and integrity.
Foreign key constraints to maintain relationships between entities.
Stored procedures for adding orders and updating stock automatically.
Triggers to calculate order totals on the fly.
Analytical views for top customers, monthly sales, and inventory status.
Preloaded sample data for testing and demonstration.

Database Schema:
---------------
The database contains the following tables:
Customers – Stores customer details (name, email, address).
Products – Holds product catalog with stock quantity and pricing.
Orders – Records orders placed by customers.
Order_Details – Line items within each order (product, quantity, subtotal).

Relationships:
-------------
A customer can have many orders.
An order contains one or more products.
Product stock automatically decreases when orders are placed.

Project Structure:
-----------------
retail_db_mysql_project/
│
├── 01_create_schema.sql        # Creates database and tables
├── 02_insert_data.sql          # Inserts sample records
├── 03_views.sql                # Adds analytical views
├── 04_stored_procedures.sql    # Stored procedures for stock/order management
├── 05_triggers.sql             # Triggers for auto calculations
└── 06_queries_examples.sql     # Example reporting queries

Setup Instructions:
-------------------
1.Install MySQL (8.0+ recommended).
2.Open MySQL CLI or Workbench.
3.Run scripts in order:

SOURCE 01_create_schema.sql;
SOURCE 02_insert_data.sql;
SOURCE 03_views.sql;
SOURCE 04_stored_procedures.sql;
SOURCE 05_triggers.sql;

Test queries using:
-------------------
SOURCE 06_queries_examples.sql;

Usage Examples:

Place a New Order
---------

CALL AddNewOrder(1, '2025-08-29', JSON_ARRAY(
    JSON_OBJECT('ProductID', 2, 'Quantity', 3),
    JSON_OBJECT('ProductID', 5, 'Quantity', 1)
));
---------
Get Monthly Sales Report
---------

SELECT * FROM MonthlySalesView;
---------

Check Top Customers
---------

SELECT * FROM TopCustomersView;
---------

Business Insights:
-----------------
Top Customers View: Identify high-value buyers.

Monthly Sales View: Track sales trends over time.

Inventory Status View: Monitor products running low on stock.

Future Enhancements:
--------------------
Add user roles and permissions for multi-user access.

Integrate with a front-end web application using Flask/Django.

Extend analytics using Power BI or Tableau dashboards.
