SELECT DISTINCT gs17.geoNetwork.region,
COUNT(gs17.fullVisitorId) AS VISITORS
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` gs17
INNER JOIN   `bigquery-public-data.google_analytics_sample.ga_sessions_20160801` gs16 ON
gs17.geoNetwork.region=gs16.geoNetwork.region
GROUP BY gs17.geoNetwork.region
ORDER BY VISITORS asc
