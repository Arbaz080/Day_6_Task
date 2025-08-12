# Orders Database Dataset

## Overview
This repository contains a comprehensive SQL dataset for an orders table, designed for PostgreSQL database testing and analysis.

## Table Structure

### `orders` Table
| Column | Data Type | Description |
|--------|-----------|-------------|
| `order_id` | SERIAL PRIMARY KEY | Auto-incrementing unique identifier |
| `order_date` | DATE | Date when the order was placed |
| `amount` | DECIMAL(10,2) | Order amount in currency |
| `product_id` | INT | Product identifier |

## Dataset Details
- **Total Records**: 500 orders
- **Date Range**: January 2024 - August 2024
- **Product Range**: 50 unique products (IDs 101-150)
- **Price Range**: $15.75 - $389.99
- **Database**: PostgreSQL compatible

## Quick Start

### 1. Create Table
```sql
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    product_id INT NOT NULL
);
```

### 2. Import Data
Run the provided INSERT statements to populate the table with 500 sample records.

### 3. Add Indexes (Optional)
```sql
CREATE INDEX idx_orders_date ON orders(order_date);
CREATE INDEX idx_orders_product_id ON orders(product_id);
CREATE INDEX idx_orders_amount ON orders(amount);
```

## Sample Query

### Monthly Revenue Analysis
```sql
SELECT 
   EXTRACT(YEAR FROM order_date) AS year,
   EXTRACT(MONTH FROM order_date) AS month,
   SUM(amount) AS total_revenue,
   COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY 
   EXTRACT(YEAR FROM order_date),
   EXTRACT(MONTH FROM order_date)
ORDER BY year, month
LIMIT 20;
```

## Use Cases
- SQL query practice and learning
- Database performance testing
- Business analytics and reporting exercises
- Data visualization projects
- PostgreSQL feature exploration

## Requirements
- PostgreSQL 9.1+ (for SERIAL data type)
- SQL client (VS Code with PostgreSQL extension, pgAdmin, etc.)

## Notes
- All dates are in YYYY-MM-DD format
- Amounts are stored as DECIMAL(10,2) for precise currency calculations
- Dataset includes realistic business patterns with repeat customers and seasonal variations
