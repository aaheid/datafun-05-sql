# Project Instructions (Module 5: Relational Data and SQL Analytics)

## WEDNESDAY: Complete Workflow Phases 1-3

Follow the instructions in
[⭐ **Workflow: Apply Example**](https://denisecase.github.io/pro-analytics-02/workflow-b-apply-example-project/)
to complete:

1. Phase 1. **Start & Run** - copy the project and confirm it runs
2. Phase 2. **Change Authorship** - update the project to your name and GitHub account
3. Phase 3. **Read & Understand** - review the project structure and code

This project includes two working examples - run both and compare:

```shell
uv run python -m datafun.app_retail_duckdb_case
uv run python -m datafun.app_retail_sqlite_case
```

Read the corresponding `.sql` files in `sql/` alongside each Python script.

## FRIDAY/SUNDAY: Complete Workflow Phases 4-5

Again, follow the instructions above to complete:

1. Phase 4. **Make a Technical Modification** - make a change and verify it still runs
2. Phase 5. **Apply the Skills to a New Problem**

## Phase 4 Suggestions

Make a small technical change that does not break the pipeline.
Choose any one of these (or a different modification as you like):

- Add a new SQL query file that computes a different KPI for the retail domain
  (e.g., total units sold per store, average sale value, number of sales above a threshold)
- Modify an existing query to add a `WHERE` clause that filters results
- Add an `ORDER BY` clause to a query that currently returns unordered results
- Add a new `run_sql_query()` call in the Python script so your new query runs and logs the result
- Add a `COUNT(*)` query that verifies the number of rows loaded matches the source CSV

Confirm the pipeline still runs successfully after your change.

## Phase 5 Suggestions

### Phase 5 Suggestion 1. New Domain, Same Database Engine: DuckDB (Directed)

Implement the same pipeline for one of the provided non-retail domains.

Available domains in `data/raw/`:

- `library` - a library branch manages many checkouts
- `shelter` - a shelter manages many animal adoptions
- `civic_event` - an event manages many attendees

Steps:

- Choose one domain (not retail)
- Create SQL files in `sql/duckdb/` named `yourname_<domain>_bootstrap.sql`,
  `yourname_<domain>_clean.sql`, and at least three query files
- Create a Python script `src/datafun/app_<domain>_duckdb_yourname.py`
  for a new domain modeled on the example
- Run your new script with `uv run python -m datafun.app_<domain>_duckdb_yourname`
- Confirm your generated database appears in `artifacts/`
- If your pipeline exports processed CSV, Parquet, or summary files, place them in `data/processed/`
- Commit all `.sql` files, your `.py` file, and the generated database
  so your completed pipeline artifacts are visible.

Then:

- Describe the two entities in your domain and their 1-to-many relationship
- Write one SQL query of your own that answers a question about your data
- Explain when SQL is a better tool than pandas for this kind of question

### Phase 5 Suggestion 2. Different Storage Format (Original)

Implement a pipeline using a different relational or columnar storage format.

Good options:

- **DuckDB with a persistent file** - analytics-oriented, file-based database
- **SQLite with a persistent file** - portable, file-based relational database
- **DuckDB with an in-memory database** - no file, useful for exploration and testing
- **Parquet** - columnar storage format that DuckDB can query well

Steps:

- Choose a format
- Load the same retail (or alternate domain) CSV data into your chosen format
- Write at least three queries that answer analytical questions
- Compare the experience to DuckDB: what is easier, what is harder, what is different?
- Document your findings in your README, docs page, or log output

Then:

- Explain why you chose this format and what use cases it is best suited for
- Describe one limitation of the format you encountered
- Identify which format you would recommend for a team analytics workflow and why

## Key Skill Focus

As you work, focus on:

- how SQL `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`, and `JOIN` answer analytical questions
- how Python orchestrates SQL execution and handles results
- how file-based databases (DuckDB, SQLite) differ from server-based ones
  (e.g., PostgreSQL, MySQL)
- how separating SQL into `.sql` files makes queries reviewable and reusable
- how a 1-to-many relationship is represented in two related tables

Your goal is to query structured data with SQL and interpret the results analytically.

## Professional Communication

Make sure the title and narrative reflect your work.
Verify key files:

- README.md
- docs/ (source and hosted on GitHub Pages)
- sql/ (your query files, correctly named)
- src/ (your pipeline script, correctly named)
- data/raw/ = source inputs
- data/processed/ (processed data exports, if the pipeline creates any)
- artifacts/ (generated database files or reports)

Ensure your project clearly demonstrates:

- a complete SQL pipeline for a non-retail domain
- at least three meaningful queries with logged results
- understanding of the relational structure of your chosen domain
