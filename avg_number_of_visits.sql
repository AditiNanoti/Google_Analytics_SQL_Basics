SELECT
  (SUM (total_visits_per_user) / COUNT(fullVisitorId) ) AS avg_total_visits_per_user
FROM (
  SELECT
    fullVisitorId,
    SUM (totals.visits) AS total_visits_per_user
  FROM
    `bigquery-public-data.google_analytics_sample.ga_sessions_*`
  WHERE
    _TABLE_SUFFIX BETWEEN '20170701'
    AND '20170731'
    AND totals.transactions IS NOT NULL
  GROUP BY
    fullVisitorId )
