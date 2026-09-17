SELECT *
FROM silver.crm_sales_details
LIMIT 20;



SELECT *
FROM silver.crm_sales_details
WHERE sls_order_dt IS NOT NULL
  AND sls_ship_dt IS NOT NULL
  AND sls_order_dt > sls_ship_dt;
SELECT *
FROM silver.crm_sales_details
WHERE sls_order_dt IS NOT NULL
  AND sls_due_dt IS NOT NULL
  AND sls_order_dt > sls_due_dt;
SELECT *
FROM silver.crm_sales_details
WHERE sls_sales <= 0
   OR sls_quantity <= 0
   OR sls_price <= 0;
