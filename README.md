# Sakila DVD Rental Analysis - SQL Lab 1

A SQL analysis project using the Sakila DVD rental database, demonstrating data ingestion, exploratory data analysis, visualizations and dashboards.

## 🛠️ Technologies Used

| Technology           | Purpose                             |
| -------------------- | ----------------------------------- |
| **Python**           | Programming language                |
| **DuckDB**           | Analytical database                 |
| **dlt**              | Data load tool for pipeline         |
| **SQL**              | Data querying and analysis          |
| **pandas**           | Data manipulation and visualization |
| **Evidence**         | Dashboard                           |
| **Jupyter Notebook** | Interactive development             |

## 📁 Project Structure

```
LAB_1_INDIRAMAHADIVA_SQL_DE25/
│
├── 📁 data/
│   ├── sqlite-sakila.db              # Source SQLite database
│   └── sakila.duckdb                 # DuckDB database
│
├── 📁 dashboard/
│   ├── 📁 pages/
│   │   └── sakila.md                 # Dashboard page
│   │
│   └── 📁 sources/
│       └── 📁 sakila/
│           ├── connection.yaml       # DuckDB connection config
│           ├── sakila.duckdb         # Database for Evidence
│           ├── top_customers.sql     # Query 1
│           ├── category_revenue.sql  # Query 2
│           ├── films_by_rating.sql   # Query 3
│           └── popular_categories.sql # Query 4
│
├── load_sakila_sqlite_duckdb.py      # dlt pipeline script
├── main.ipynb                        # Main analysis notebook
├── .gitignore
└── README.md
```

## 📊 Tasks Completed

### Task 0 - Data Ingestion

- Created dlt pipeline to migrate data from SQLite to DuckDB
- Used staging schema for organized data storage
- Loaded 17 tables

### Task 1 - Exploratory Data Analysis

| Task | Description                            | SQL Concepts                |
| ---- | -------------------------------------- | --------------------------- |
| 1a   | Films longer than 180 minutes          | WHERE, ORDER BY             |
| 1b   | Movies with "love" in title            | REGEXP_MATCHES/ LIKE, LOWER |
| 1c   | Descriptive statistics for film length | MIN, AVG, MEDIAN, MAX       |
| 1d   | Top 10 most expensive films per day    | Calculated column, LIMIT    |
| 1e   | Top 10 actors by number of movies      | JOIN, GROUP BY, COUNT       |
| 1f   | Custom questions (5 queries)           | Multi-table JOINs, Subquery |

### Task 2 - Visualizations

| Chart | Description                    | JOIN Path                                                   |
| ----- | ------------------------------ | ----------------------------------------------------------- |
| 2a    | Top 5 Customers by Total Spend | customer -> payment                                         |
| 2b    | Revenue by Film Category       | category -> film_category -> inventory -> rental -> payment |

### Task 3 - Evidence Dashboard

Interactive BI dashboard with 4 findings:

1. **Top 5 Customers** - Best customers by total spend
2. **Revenue by Category** - With dropdown filter
3. **Films by Rating** - Distribution with dropdown filter
4. **Popular Categories** - Most rented categories

## 📈 Key Findings

1. **Top Customer**: Eleanor Hunt with highest total spend
2. **Most Profitable Categories**: Sports and Sci-Fi generate the most revenue
3. **Film Ratings**: Majority of films are rated PG-13 and NC-17
4. **Popular Rentals**: Sports and Animation are most frequently rented

## 🗄️ Database Schema

The Sakila database contains the following key tables:

| Table     | Description                               |
| --------- | ----------------------------------------- |
| film      | Movie information (title, length, rating) |
| customer  | Customer details                          |
| rental    | Rental transactions                       |
| payment   | Payment records                           |
| actor     | Actor information                         |
| category  | Film categories                           |
| inventory | Store inventory                           |

## 📚 SQL Concepts Demonstrated

- **Basic Queries**: SELECT, WHERE, ORDER BY, LIMIT
- **Pattern Matching**: REGEXP_MATCHES, LIKE, LOWER
- **Aggregate Functions**: COUNT, SUM, AVG, MIN, MAX, MEDIAN
- **Joins**: INNER JOIN, multi-table joins
- **Grouping**: GROUP BY with aggregations
- **Subqueries**: NOT IN with nested queries
- **Calculated Columns**: Arithmetic operations in SELECT

## 👤 Author

** Putu Indira Mahadiva Arysaputri **

Data Engineering Student - DE25

## 📚 References & Resources

### Database

- [Sakila Sample Database - Kaggle ](https://www.kaggle.com/datasets/atanaskanev/sqlite-sakila-sample-database?resource=download)

### DuckDB

- [DuckDB Documentation](https://duckdb.org/docs/)
- [DuckDB SQL Reference](https://duckdb.org/docs/sql/introduction)

### dlt (Data Load Tool)

- [dlt Documentation](https://dlthub.com/docs/intro)
- [Kokchun Github repo](https://github.com/AIgineerAB/duckdb_sql_analytics_course)

### Evidence

- [Evidence Documentation](https://docs.evidence.dev/)

### SQL Learning

- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)
- [Kokchun Github repo](https://github.com/AIgineerAB/duckdb_sql_analytics_course)
