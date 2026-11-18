
--To create the main live stock history table
CREATE TABLE live_stock_history (
    record_id SERIAL PRIMARY KEY,
    timestamp TIMESTAMPTZ NOT NULL,
    ticker VARCHAR(10) NOT NULL,
    company_name TEXT NOT NULL,
    industry VARCHAR(100),
    exchange VARCHAR(100),
    current_price DOUBLE PRECISION NOT NULL,
    daily_high DOUBLE PRECISION,
    daily_low DOUBLE PRECISION,
    open_price DOUBLE PRECISION,
    prev_close DOUBLE PRECISION,
    net_change DOUBLE PRECISION,
    percent_change DOUBLE PRECISION
);

-- To create the empty snapshot table (copies exact same columns)
CREATE TABLE live_stock_history_snapshot (
    LIKE live_stock_history INCLUDING ALL
);

-- To verify the data in both tables
SELECT * FROM live_stock_history;
SELECT * FROM live_stock_history_snapshot;


-- To Delete all the rows and restart record id
--TRUNCATE TABLE live_stock_history RESTART IDENTITY;
--TRUNCATE TABLE live_stock_history_snapshot RESTART IDENTITY;

