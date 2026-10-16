# SQL Exercises — Backend Developer Practice

## 🎯 Objectives

- Understand how to retrieve data using SQL.
- Filter records based on specific conditions.
- Search for customers and products.
- Sort records by dates, sales, and other values.
- Implement pagination using `LIMIT` and `OFFSET`.
- Calculate totals and explore datasets.
- Practice queries similar to those used in backend REST APIs.

## 🗄️ Dataset

**Table:** `superstore`

The exercises use a single imported Superstore table. No database design or table creation is required.

Typical columns include:

- `Order ID`
- `Order Date`
- `Ship Mode`
- `Customer ID`
- `Customer Name`
- `Segment`
- `City`
- `State`
- `Region`
- `Product ID`
- `Category`
- `Sub-Category`
- `Product Name`
- `Sales`
- `Quantity`
- `Discount`
- `Profit`

**Note:** Column names may differ depending on how the dataset was imported. Use `DESCRIBE superstore;` to check the actual table structure. Column names containing spaces must be enclosed in backticks.

## 📚 Exercises

### Level 1 — Explore the Table

**Topics:** `SELECT`, `LIMIT`, `COUNT`, `DISTINCT`, `DESCRIBE`

- [ ] Display the table structure and column types.
- [ ] Display the first 10 rows.
- [ ] Count the total number of rows.
- [ ] List all unique regions.
- [ ] List all unique product categories.

### Level 2 — Filter and Sort Data

**Topics:** `WHERE`, `AND`, `OR`, `IN`, `BETWEEN`, `LIKE`, `ORDER BY`

- [ ] Find all orders from the West region.
- [ ] Find orders with sales greater than 500.
- [ ] Find Technology orders with a positive profit.
- [ ] Find orders shipped using First Class or Same Day.
- [ ] Find customers whose names start with the letter A.
- [ ] Find orders placed between two selected dates.
- [ ] Display the 10 orders with the highest sales.

### Level 3 — Backend-Style Queries

**Topics:** `LIMIT`, `OFFSET`, `LIKE`, `ORDER BY`, `WHERE`

These exercises simulate the data-retrieval operations commonly used in backend APIs.

- [ ] **Product search:** Find products whose names contain "chair".

  Example API concept: `GET /products?search=chair`

- [ ] **Order lookup:** Retrieve a specific order using its Order ID.

  Example API concept: `GET /orders/{id}`

- [ ] **Pagination:** Display page 1 with 20 rows, then page 2 with the next 20 rows.

  Example API concept: `GET /orders?page=2`

- [ ] **Latest orders:** Display the 5 most recent orders using the order date.

- [ ] **Customer filtering:** Retrieve all orders belonging to a specific Customer ID.

  Example API concept: `GET /customers/{id}/orders`
