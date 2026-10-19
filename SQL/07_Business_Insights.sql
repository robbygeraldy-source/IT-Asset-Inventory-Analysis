SELECT
    SUM(QTY) AS Total_Assets,
    COUNT(*) AS Total_Records,
    COUNT(DISTINCT MOR) AS Total_MOR,
    COUNT(DISTINCT Site) AS Total_Sites,
    COUNT(DISTINCT Nama_Item) AS Total_Items
FROM Asset_Data_MOR;

-- =================================================
-- 1. Asset Distribution by MOR
-- =================================================
SELECT
    MOR,
    SUM(QTY) AS Total_Assets,
    CAST(
        SUM(QTY) * 100.0 /
        (SELECT SUM(QTY)
         FROM Asset_Data_MOR)
        AS DECIMAL(5,2)
    ) AS Asset_Percentage
FROM Asset_Data_MOR
GROUP BY MOR
ORDER BY Total_Assets DESC;

-- =================================================
-- 2. Top 10 Sites
-- =================================================
SELECT TOP 10
    Site,
    SUM(QTY) AS Total_Assets,
    CAST(
        SUM(QTY) * 100.0 /
        (SELECT SUM(QTY)
         FROM Asset_Data_MOR)
        AS DECIMAL(5,2)
    ) AS Asset_Percentage
FROM Asset_Data_MOR
GROUP BY Site
ORDER BY Total_Assets DESC;

-- =================================================
-- 3. Top 10 Asset Items
-- =================================================
SELECT TOP 10
    Nama_Item,
    SUM(QTY) AS Total_Assets
FROM Asset_Data_MOR
GROUP BY Nama_Item
ORDER BY Total_Assets DESC;

-- =================================================
-- 4. Data Quality - Missing Serial Number
-- =================================================
SELECT
    COUNT(*) AS Missing_SN,
    CAST(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM Asset_Data_MOR)
        AS DECIMAL(5,2)
    ) AS Missing_SN_Percentage
FROM Asset_Data_MOR
WHERE [Serial_Number] IS NULL
   OR LTRIM(RTRIM([Serial_Number])) = '-';

-- =================================================
-- 5. Duplicate Serial Number
-- =================================================
SELECT
    [Serial_Number],
    COUNT(*) AS Duplicate_Count
FROM Asset_Data_MOR
WHERE [Serial_Number] IS NOT NULL
  AND LTRIM(RTRIM([Serial_Number])) <> '-'
GROUP BY [Serial_Number]
HAVING COUNT(*) > 1
ORDER BY Duplicate_Count DESC;


