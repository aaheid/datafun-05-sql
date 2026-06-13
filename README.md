# datafun-05-sql

[![Workflow Guide](https://img.shields.io/badge/Pro--Guide-pro--analytics--02-green)](https://aaheid.github.io/pro-analytics-02/workflow-b-apply-example-project/)
[![Python 3.14](https://img.shields.io/badge/python-3.14%2B-blue?logo=python)](./pyproject.toml)
[![MIT](https://img.shields.io/badge/license-see%20LICENSE-yellow.svg)](./LICENSE)

> Professional Python project: relational data and SQL analytics.

Data analytics requires a variety of skills.
This course builds capabilities through working projects.

In the age of generative AI, durable skills are grounded in real work:
setting up a professional environment,
reading and running code,
understanding the logic,
and pushing work to a shared repository.
Each project follows the structure of professional Python projects.
We learn by doing.

## This Project

This project introduces **relational data and SQL** used when storing structured data in tables.
Analysts are typically highly skilled at both SQL and Python.

Sample datasets are provided in the `data/raw` folder
across several topic domains:

- **retail** - a store records many sales (the worked example)
- **library** - a library branch manages many checkouts
- **shelter** - a shelter manages many animal adoptions
- **civic_event** - an event manages many attendees

Each domain has two related tables in a 1-to-many relationship.
You will run the retail example, then implement the same pipeline for a domain you choose.

## Working Files

You'll work with just these areas:

- **data/raw/\*** - raw CSV input files
- **data/processed/** - processed data outputs, if created
- **artifacts/** - generated database files, logs, or reports
- **docs/** - the project narrative and documentation
- **sql/** - SQL query files
- **src/datafun/** - Python orchestration scripts
- **pyproject.toml** - update project metadata
- **zensical.toml** - update documentation site metadata

## Instructions (pro-analytics-02)

Follow the
[step-by-step workflow guide](https://aaheid.github.io/pro-analytics-02/workflow-b-apply-example-project/)
to complete:

1. Phase 1. **Start & Run**
2. Phase 2. **Change Authorship**
3. Phase 3. **Read & Understand**
4. Phase 4. **Modify**
5. Phase 5. **Apply**

## Challenges

Challenges are expected.
Sometimes instructions may not quite match your operating system.
When issues occur, share screenshots, error messages, and details about what you tried.
Working through issues is part of implementing professional projects.

## Success

After completing Phase 1. **Start & Run**, you'll have your own GitHub project,
running on your machine.

Running the examples should create generated database files in `artifacts/`.

A new file `project.log` will appear in the root project folder
and you should see:

```shell
========================
Executed successfully!
========================
```

A new file `project.log` will appear in the root project folder.

## Command Reference

The commands below are used in the workflow guide above.
They are provided here for convenience.

Follow the guide for the **full instructions**.

<details>
<summary>Show command reference</summary>

### In a machine terminal (open in your `Repos` folder)

After you get a copy of this repo in your own GitHub account,
open a machine terminal in your `Repos` folder:

```shell
# Replace username with YOUR GitHub username.
git clone https://github.com/username/datafun-05-sql

cd datafun-05-sql
code .
```

### In a VS Code terminal

These are listed for convenience.
For best results, follow the detailed instructions in
[pro-analytics-02 guide](https://aaheid.github.io/pro-analytics-02/).

```shell
uv self update
uv python pin 3.14
uv lock --upgrade
uv sync --extra dev --extra docs --upgrade

uvx pre-commit install

git add -A
uvx pre-commit run --all-files
# repeat if changes were made
uvx pre-commit run --all-files

# run the example pipelines (duckdb and sqlite)
uv run python -m datafun.app_retail_duckdb_case
uv run python -m datafun.app_retail_sqlite_case

# do chores
uv run ruff format .
uv run ruff check . --fix
uv run python -m pyright
uv run python -m pytest
uv run python -m zensical build

# save progress
git add -A
git commit -m "update"
git push -u origin main
```

</details>

## Notes

- Use the **UP ARROW** and **DOWN ARROW** in the terminal to scroll through past commands.
- Use `CTRL+f` to find (and replace) text within a file.
- You do not need to add to or modify `tests/`. They are provided for example only.
- Many files are silent helpers. Explore as you like, but nothing is required.
- You do NOT not to understand everything; understanding builds naturally over time.

## Troubleshooting >>>

If you see something like this in your terminal: `>>>` or `...`
You accidentally started Python interactive mode.
It happens.
Press `Ctrl+c` (both keys together) or `Ctrl+Z` then `Enter` on Windows.

## DuckDB Example Output (Replace This with Yours and Describe)
I copied the DuckDB example app and SQL query, then modified the sales-by-category query to sort product categories by total revenue.
```shell
| INFO | P05 | RUN SQL query: C:\Repos\datafun\datafun-05-sql\sql\duckdb\aaheid_retail_query_sales_by_category.sql
2026-06-12 21:18:24 | INFO | P05 | === RUN START ===
2026-06-12 21:18:24 | INFO | P05 | project=P05 Pipeline Example (DuckDB)
2026-06-12 21:18:24 | INFO | P05 | repo_dir=datafun-05-sql
2026-06-12 21:18:24 | INFO | P05 | python=3.14.5
2026-06-12 21:18:24 | INFO | P05 | os=Windows 11
2026-06-12 21:18:24 | INFO | P05 | shell=powershell
2026-06-12 21:18:24 | INFO | P05 | cwd=.
2026-06-12 21:18:24 | INFO | P05 | github_actions=False
2026-06-12 21:18:24 | INFO | P05 | START main()
2026-06-12 21:18:24 | INFO | P05 | ROOT_DIR: C:\Repos\datafun-05-sql
2026-06-12 21:18:24 | INFO | P05 | DATA_RAW_DIR: C:\Repos\datafun-05-sql\data\raw\retail
2026-06-12 21:18:24 | INFO | P05 | DATA_PROCESSED_DIR: C:\Repos\datafun-05-sql\data\processed\retail
2026-06-12 21:18:24 | INFO | P05 | SQL_DIR: C:\Repos\datafun-05-sql\sql\duckdb
2026-06-12 21:18:24 | INFO | P05 | DB_PATH: C:\Repos\datafun-05-sql\artifacts\duckdb\retail.duckdb
2026-06-12 21:18:24 | INFO | P05 | RUN SQL script: C:\Repos\datafun-05-sql\sql\duckdb\case_retail_clean.sql
2026-06-12 21:18:24 | INFO | P05 | DONE SQL script: C:\Repos\datafun-05-sql\sql\duckdb\case_retail_clean.sql
2026-06-12 21:18:24 | INFO | P05 | RUN SQL script: C:\Repos\datafun-05-sql\sql\duckdb\case_retail_bootstrap.sql
2026-06-12 21:18:25 | INFO | P05 | DONE SQL script: C:\Repos\datafun-05-sql\sql\duckdb\case_retail_bootstrap.sql
2026-06-12 21:18:25 | INFO | P05 |
2026-06-12 21:18:25 | INFO | P05 | RUN SQL query: C:\Repos\datafun-05-sql\sql\duckdb\case_retail_query_store_count.sql
2026-06-12 21:18:25 | INFO | P05 | ====================================
2026-06-12 21:18:25 | INFO | P05 | case_retail_query_store_count.sql
2026-06-12 21:18:25 | INFO | P05 | ====================================
2026-06-12 21:18:25 | INFO | P05 | store_count
2026-06-12 21:18:25 | INFO | P05 | 3
2026-06-12 21:18:25 | INFO | P05 |
2026-06-12 21:18:25 | INFO | P05 | RUN SQL query: C:\Repos\datafun-05-sql\sql\duckdb\case_retail_query_sales_count.sql
2026-06-12 21:18:25 | INFO | P05 | ====================================
2026-06-12 21:18:25 | INFO | P05 | case_retail_query_sales_count.sql
2026-06-12 21:18:25 | INFO | P05 | ====================================
2026-06-12 21:18:25 | INFO | P05 | sale_count
2026-06-12 21:18:25 | INFO | P05 | 30
2026-06-12 21:18:25 | INFO | P05 |
2026-06-12 21:18:25 | INFO | P05 | RUN SQL query: C:\Repos\datafun-05-sql\sql\duckdb\case_retail_query_sales_aggregate.sql
2026-06-12 21:18:25 | INFO | P05 | ====================================
2026-06-12 21:18:25 | INFO | P05 | case_retail_query_sales_aggregate.sql
2026-06-12 21:18:25 | INFO | P05 | ====================================
2026-06-12 21:18:25 | INFO | P05 | sale_count, total_revenue, avg_sale_amount
2026-06-12 21:18:25 | INFO | P05 | 30, 5227.0, 174.23
2026-06-12 21:18:25 | INFO | P05 |
2026-06-12 21:18:25 | INFO | P05 | RUN SQL query: C:\Repos\datafun-05-sql\sql\duckdb\aaheid_retail_query_sales_by_category.sql
2026-06-12 21:18:25 | INFO | P05 | ====================================
2026-06-12 21:18:25 | INFO | P05 | aaheid_retail_query_sales_by_category.sql
2026-06-12 21:18:25 | INFO | P05 | ====================================
2026-06-12 21:18:25 | INFO | P05 | product_category, sale_count, total_revenue, avg_sale_amount
2026-06-12 21:18:25 | INFO | P05 | Outdoors, 9, 3200.0, 355.56
2026-06-12 21:18:25 | INFO | P05 | Clothing, 10, 1375.0, 137.5
2026-06-12 21:18:25 | INFO | P05 | Food, 11, 652.0, 59.27
2026-06-12 21:18:25 | INFO | P05 |
2026-06-12 21:18:25 | INFO | P05 | RUN SQL query: C:\Repos\datafun-05-sql\sql\duckdb\case_retail_query_kpi_revenue.sql
2026-06-12 21:18:25 | INFO | P05 | ====================================
2026-06-12 21:18:25 | INFO | P05 | case_retail_query_kpi_revenue.sql
2026-06-12 21:18:25 | INFO | P05 | ====================================
2026-06-12 21:18:25 | INFO | P05 | store_id, store_name, city, region, sale_count, total_revenue, avg_sale_amount
2026-06-12 21:18:25 | INFO | P05 | S003, Central Plaza, Mankato, South, 10, 1868.0, 186.8
2026-06-12 21:18:25 | INFO | P05 | S001, North Market, Duluth, North, 10, 1834.0, 183.4
2026-06-12 21:18:25 | INFO | P05 | S002, Lakeside Shop, Ely, North, 10, 1525.0, 152.5
2026-06-12 21:18:25 | INFO | P05 | ========================
2026-06-12 21:18:25 | INFO | P05 | Executed successfully!
2026-06-12 21:18:25 | INFO | P05 | ========================
2026-06-12 21:18:25 | INFO | P05 | END main()

## Custom SQL Project

## Custom Project Work

### Phase 4 Technical Modification

For Phase 4, I created a custom SQL query and modified the example DuckDB pipeline.

New files created:

- `app_retail_duckdb_aaheid.py`
- `aaheid_retail_query_sales_by_category.sql`

I modified the retail sales query so product categories were analyzed by total revenue. This allowed me to compare product categories based on sales performance instead of only reviewing the original example output.

### Phase 5 New Domain Project

For Phase 5, I created a new SQL pipeline using the **library** domain instead of the retail domain.

New files created:

- `app_library_duckdb_aaheid.py`
- `aaheid_library_clean.sql`
- `aaheid_library_bootstrap.sql`
- `aaheid_library_query_branch_count.sql`
- `aaheid_library_query_checkout_count.sql`
- `aaheid_library_query_checkouts_by_branch.sql`

### Dataset Description

This project uses a library dataset with two related tables:

- **branch** — stores library branch information such as branch name, city, and system name.
- **checkout** — stores checkout transaction data including material type, checkout duration, fines, and checkout date.

Relationship:

- One **branch** can have many **checkout** records.
- The `branch_id` field serves as the primary key in the branch table and a foreign key in the checkout table.

### Results

The SQL queries were used to:

- Count the number of library branches
- Count the total number of checkouts
- Compare checkout activity and total fines collected by branch

### What I Learned

This project helped me understand how Python can automate SQL execution and how SQL queries can answer analytical questions by using filtering, grouping, sorting, joins, and aggregation functions.
This project helped me realize that I needed to read the project instructions.  
