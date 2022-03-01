SELECT 
(SUM(totals.transactions)/COUNT(totals.visits))*100 AS Customer_Conversion_Rate
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE
  _TABLE_SUFFIX BETWEEN '20160701'
  AND '20170701'

