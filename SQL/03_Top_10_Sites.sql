/*
====================================================
IT ASSET INVENTORY ANALYSIS
TOP 10 SITES BY ASSET QUANTITY
====================================================
*/

USE [IT_AssetMOR];

SELECT TOP 10
    Site,
    SUM(QTY) AS Total_Assets
FROM Asset_Data_MOR
GROUP BY Site
ORDER BY Total_Assets DESC;