SELECT
  trafficSource.campaign,
  SUM ( totals.transactions) AS total_transactions
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE
  _TABLE_SUFFIX BETWEEN '20170701'
  AND '20170731'
GROUP BY
  trafficSource.campaign
ORDER BY
  total_transactions DESC
