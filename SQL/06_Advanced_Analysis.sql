WITH Site_Asset AS
(
    SELECT
        MOR,
        Site,
        SUM(QTY) AS Total_Assets
    FROM Asset_Data_MOR
    GROUP BY
        MOR,
        Site
),
Ranked_Site AS
(
    SELECT
        MOR,
        Site,
        Total_Assets,
        ROW_NUMBER() OVER
        (
            PARTITION BY MOR
            ORDER BY Total_Assets DESC
        ) AS Rank_Site
    FROM Site_Asset
)
SELECT
    MOR,
    Site,
    Total_Assets,
    Rank_Site
FROM Ranked_Site
WHERE Rank_Site <= 3
ORDER BY
    MOR,
    Rank_Site;