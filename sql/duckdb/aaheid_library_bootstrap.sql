CREATE TABLE branch (
    branch_id TEXT PRIMARY KEY,
    branch_name TEXT NOT NULL,
    city TEXT NOT NULL,
    system_name TEXT NOT NULL
);

CREATE TABLE checkout (
    checkout_id TEXT PRIMARY KEY,
    branch_id TEXT NOT NULL,
    material_type TEXT NOT NULL,
    duration_days INTEGER NOT NULL,
    fine_amount DOUBLE NOT NULL,
    checkout_date TEXT NOT NULL
);

COPY branch
FROM 'data/raw/library/branch.csv'
(HEADER, DELIMITER ',');

COPY checkout
FROM 'data/raw/library/checkout.csv'
(HEADER, DELIMITER ',');
