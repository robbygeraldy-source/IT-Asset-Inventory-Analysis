/*
====================================================
IT ASSET INVENTORY ANALYSIS
ASSET DISTRIBUTION BY MOR
====================================================
*/

USE [IT_AssetMOR];

SELECT
    MOR,
    SUM(QTY) AS Total_Assets
FROM Asset_Data_MOR
GROUP BY MOR
ORDER BY Total_Assets DESC;