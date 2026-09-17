USE bronze;

TRUNCATE TABLE bronze.crm_prd_info;

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/prd_info.csv'
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    @prd_id,
    @prd_key,
    @prd_nm,
    @prd_cost,
    @prd_line,
    @prd_start_dt,
    @prd_end_dt
)
SET
    prd_id = NULLIF(TRIM(@prd_id), ''),
    prd_key = NULLIF(TRIM(@prd_key), ''),
    prd_nm = NULLIF(TRIM(@prd_nm), ''),
    prd_cost = NULLIF(TRIM(@prd_cost), ''),
    prd_line = NULLIF(TRIM(@prd_line), ''),
    prd_start_dt = NULLIF(TRIM(@prd_start_dt), ''),
    prd_end_dt = NULLIF(TRIM(@prd_end_dt), '');
    
USE bronze;

TRUNCATE TABLE bronze.crm_sales_details;

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sales_details.csv'
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    @sls_ord_num,
    @sls_prd_key,
    @sls_cust_id,
    @sls_order_dt,
    @sls_ship_dt,
    @sls_due_dt,
    @sls_sales,
    @sls_quantity,
    @sls_price
)
SET
    sls_ord_num = NULLIF(TRIM(@sls_ord_num), ''),
    sls_prd_key = NULLIF(TRIM(@sls_prd_key), ''),
    sls_cust_id = NULLIF(TRIM(@sls_cust_id), ''),
    sls_order_dt = NULLIF(TRIM(@sls_order_dt), ''),
    sls_ship_dt = NULLIF(TRIM(@sls_ship_dt), ''),
    sls_due_dt = NULLIF(TRIM(@sls_due_dt), ''),
    sls_sales = NULLIF(TRIM(@sls_sales), ''),
    sls_quantity = NULLIF(TRIM(@sls_quantity), ''),
    sls_price = NULLIF(TRIM(@sls_price), '');
    
USE bronze;

TRUNCATE TABLE bronze.erp_loc_a101;

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/LOC_A101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    @cid,
    @cntry
)
SET
    cid = NULLIF(TRIM(@cid), ''),
    cntry = NULLIF(TRIM(@cntry), '');
    
    
USE bronze;

TRUNCATE TABLE bronze.erp_cust_az12;

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/CUST_AZ12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    @cid,
    @bdate,
    @gen
)
SET
    cid = NULLIF(TRIM(@cid), ''),
    bdate = NULLIF(TRIM(@bdate), ''),
    gen = NULLIF(TRIM(@gen), '');
    
USE bronze;

TRUNCATE TABLE bronze.erp_px_cat_g1v2;

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/PX_CAT_G1V2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    @id,
    @cat,
    @subcat,
    @maintenance
)
SET
    id = NULLIF(TRIM(@id), ''),
    cat = NULLIF(TRIM(@cat), ''),
    subcat = NULLIF(TRIM(@subcat), ''),
    maintenance = NULLIF(TRIM(@maintenance), '');
    
USE bronze;

SELECT 'crm_cust_info' AS table_name, COUNT(*) AS row_count
FROM crm_cust_info

UNION ALL

SELECT 'crm_prd_info', COUNT(*)
FROM crm_prd_info

UNION ALL

SELECT 'crm_sales_details', COUNT(*)
FROM crm_sales_details

UNION ALL

SELECT 'erp_loc_a101', COUNT(*)
FROM erp_loc_a101

UNION ALL

SELECT 'erp_cust_az12', COUNT(*)
FROM erp_cust_az12

UNION ALL

SELECT 'erp_px_cat_g1v2', COUNT(*)
FROM erp_px_cat_g1v2;
