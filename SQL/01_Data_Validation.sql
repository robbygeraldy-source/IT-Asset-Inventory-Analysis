/*
====================================================
IT ASSET INVENTORY ANALYSIS
SQL DATA VALIDATION
====================================================

Purpose:
Validate the completeness and consistency of
IT Asset Inventory data before analysis.

Source Table:
dbo.IT_Asset_Data_MOR
====================================================
*/

USE [IT_AssetMOR];

-- 1. Total Records
SELECT
    COUNT(*) AS Total_Records
FROM Asset_Data_MOR;


-- 2. Total Assets
SELECT
    SUM(QTY) AS Total_Assets
FROM Asset_Data_MOR;


-- 3. Total MOR
SELECT
    COUNT(DISTINCT MOR) AS Total_MOR
FROM Asset_Data_MOR;


-- 4. Total Sites
SELECT
    COUNT(DISTINCT Site) AS Total_Sites
FROM Asset_Data_MOR;


-- 5. Total Asset Items
SELECT
    COUNT(DISTINCT [Nama_Item]) AS Total_Items
FROM Asset_Data_MOR;

-- 6. Overall KPI Summary

SELECT
    SUM(QTY) AS Total_Assets,
    COUNT(*) AS Total_Records,
    COUNT(DISTINCT MOR) AS Total_MOR,
    COUNT(DISTINCT Site) AS Total_Sites,
    COUNT(DISTINCT [Nama_Item]) AS Total_Items
FROM Asset_Data_MOR;