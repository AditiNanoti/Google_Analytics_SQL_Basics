SELECT
  geoNetwork.country,
  MAX ( totals.transactionRevenue ) AS total_transactionRevenue
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE
  _TABLE_SUFFIX BETWEEN '20160701'
  AND '20170701' AND (totals.transactionRevenue IS NOT NULL)
GROUP BY
  geoNetwork.country
ORDER BY
  total_transactionRevenue desc 
