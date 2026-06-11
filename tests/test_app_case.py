# tests/test_app_case.py
#
# Simple, clear pytest examples.
# Show how to test file-writing functions without touching
# the real project folder, and how to avoid slow sleeps.
#
# Assumptions:
# - module is importable
# - pytest running from project root
#
# Run:
#   uv run python -m pytest

from datafun import app_retail_duckdb_case, app_retail_sqlite_case


def test_app_retail_duckdb_case_exists() -> None:
    """Test that the duckdb retail case module exists."""
    assert app_retail_duckdb_case is not None


def test_app_retail_sqlite_case_exists() -> None:
    """Test that the sqlite retail case module exists."""
    assert app_retail_sqlite_case is not None
