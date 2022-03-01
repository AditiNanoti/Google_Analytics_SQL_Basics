SELECT DISTINCT (hits.page.searchKeyword),
hits.page.pageTitle,
hits.page.hostname
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
CROSS JOIN UNNEST(hits) hits
WHERE
  _TABLE_SUFFIX BETWEEN '20170701'
  AND '20170731'
AND hits.page.searchKeyword IS NOT NULL 
