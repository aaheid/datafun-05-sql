# Project Documentation

This site provides documentation for this project.
Use docs navigation to explore.

## How-To Guide

Many instructions are common to all our projects.

See
[⭐ **Workflow: Apply Example**](https://denisecase.github.io/pro-analytics-02/workflow-b-apply-example-project/)
to get these projects running on your machine.

## Custom Project

### Dataset

For this project, I worked with a retail sales dataset stored in CSV files and loaded into a DuckDB database. The dataset represents retail store transactions and sales activity.

The project uses two related tables:

- **store** – contains information about each retail store including store_id, store_name, city, and region.
- **sale** – contains sales transaction information including sale_id, store_id, product_category, quantity, amount, and sale_date.

The relationship between the tables is **one-to-many**. One store can have many sales transactions, but each sale belongs to only one store. The `store_id` field acts as the primary key in the store table and as a foreign key in the sale table.

### Phase 4 Initial Modifications

For Phase 4, I made a small technical modification by copying the example DuckDB application and SQL query files and creating my own versions.

Files created:

- `app_retail_duckdb_aaheid.py`
- `aaheid_retail_query_sales_by_category.sql`

I modified the SQL query so that product categories were sorted by **total revenue** instead of simply using the original example output. The query used SQL aggregation functions such as `SUM(amount)` and `ORDER BY total_revenue DESC`.

I verified the pipeline still worked by running:

```powershell
uv run python -m datafun.app_retail_duckdb_aaheid
```

The terminal showed **Executed successfully**, confirming that the pipeline still ran correctly after my changes.

### Phase 5 Custom Project

For Phase 5, I extended the SQL pipeline by creating a new SQL query that answered a different business question.

New file created:

- `aaheid_retail_query_top_store.sql`

I updated the Python application file `app_retail_duckdb_aaheid.py` so it would execute the new SQL query along with the existing queries.

The project generated the DuckDB database file inside the `artifacts/` folder.

The new SQL query calculated **total sales revenue by store** and ranked stores from highest to lowest revenue.

One query result I found interesting was identifying which store generated the highest sales revenue. The query showed that stores had noticeably different revenue totals, making it easy to compare store performance.

This project helped me understand how SQL queries, Python automation, and database pipelines can work together to answer business questions and produce meaningful analytics.
