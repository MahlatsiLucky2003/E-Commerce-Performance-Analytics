--------------------------------------------------------------------------------
-- 1. ROW COUNT RECONCILIATION & BALANCE CHECK
-- Purpose: Compares total source staging records against target warehouse records 
-- to ensure no data loss during ingestion and transformation.
--------------------------------------------------------------------------------
SELECT 
    'stg_order_items' AS source_table, 
    COUNT(*) AS row_count 
FROM dbo.stg_order_items
UNION ALL
SELECT 
    'fact_order_line' AS target_table, 
    COUNT(*) AS row_count 
FROM dw.fact_order_line;

--------------------------------------------------------------------------------
-- 2. FOREIGN KEY FALLBACK AUDIT (-1 UNASSIGNED CHECK)
-- Purpose: Audits the fact table to verify how many rows fell back to the 
-- default unassigned surrogate key (-1), highlighting potential data quality issues in staging.
--------------------------------------------------------------------------------
SELECT 
    SUM(CASE WHEN user_key = -1 THEN 1 ELSE 0 END) AS unassigned_user_records,
    SUM(CASE WHEN product_key = -1 THEN 1 ELSE 0 END) AS unassigned_product_records,
    COUNT(*) AS total_fact_records
FROM dw.fact_order_line;

--------------------------------------------------------------------------------
-- 3. IDEMPOTENCY & DUPLICATE CHECK
-- Purpose: Ensures that re-running the pipeline does not create duplicate order items 
-- or violate grain uniqueness (order_item_id must be unique).
--------------------------------------------------------------------------------
SELECT 
    order_item_id, 
    COUNT(*) AS duplicate_count
FROM dw.fact_order_line
GROUP BY order_item_id
HAVING COUNT(*) > 1;

--------------------------------------------------------------------------------
-- 4. DIMENSION SYNCHRONIZATION AUDIT
-- Purpose: Validates that dimension tables successfully synchronized all records 
-- from the staging layer without missing updates.
--------------------------------------------------------------------------------
SELECT 
    'Users' AS dimension_name,
    (SELECT COUNT(*) FROM dbo.stg_users) AS staging_count,
    (SELECT COUNT(*) FROM dw.dim_user) AS warehouse_count
UNION ALL
SELECT 
    'Products' AS dimension_name,
    (SELECT COUNT(*) FROM dbo.stg_products) AS staging_count,
    (SELECT COUNT(*) FROM dw.dim_product) AS warehouse_count;