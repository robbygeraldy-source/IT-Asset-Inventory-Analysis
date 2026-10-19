/*
====================================================
IT ASSET INVENTORY ANALYSIS
TOP 10 ASSET ITEMS
====================================================
*/

USE [IT_AssetMOR];

SELECT TOP 10
    [Nama_Item],
    SUM(QTY) AS Total_Assets
FROM Asset_Data_MOR
GROUP BY [Nama_Item]
ORDER BY Total_Assets DESC;