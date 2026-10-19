SELECT
    COUNT(*) AS Missing_SN,
    CAST(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM Asset_Data_MOR)
        AS DECIMAL(5,2)
    ) AS Missing_SN_Percentage
FROM Asset_Data_MOR
WHERE [Serial_Number] IS NULL
   OR [Serial_Number] = '-';