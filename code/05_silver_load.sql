USE silver;

TRUNCATE TABLE silver.crm_cust_info;

INSERT INTO silver.crm_cust_info (
    cst_id,
    cst_key,
    cst_firstname,
    cst_lastname,
    cst_marital_status,
    cst_gndr,
    cst_create_date
)
SELECT
    CAST(cst_id AS UNSIGNED) AS cst_id,

    TRIM(cst_key) AS cst_key,

    TRIM(cst_firstname) AS cst_firstname,

    TRIM(cst_lastname) AS cst_lastname,

    CASE
        WHEN UPPER(TRIM(cst_marital_status)) = 'S' THEN 'Single'
        WHEN UPPER(TRIM(cst_marital_status)) = 'M' THEN 'Married'
        ELSE 'n/a'
    END AS cst_marital_status,

    CASE
        WHEN UPPER(TRIM(cst_gndr)) = 'F' THEN 'Female'
        WHEN UPPER(TRIM(cst_gndr)) = 'M' THEN 'Male'
        ELSE 'n/a'
    END AS cst_gndr,

    CASE
        WHEN TRIM(cst_create_date) = ''
            OR cst_create_date IS NULL
        THEN NULL
        ELSE STR_TO_DATE(TRIM(cst_create_date), '%Y-%m-%d')
    END AS cst_create_date

FROM (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY cst_id
            ORDER BY cst_create_date DESC
        ) AS flag_last
    FROM bronze.crm_cust_info
    WHERE cst_id IS NOT NULL
      AND TRIM(cst_id) <> ''
) AS t

WHERE flag_last = 1;
