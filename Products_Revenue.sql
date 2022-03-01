SELECT DISTINCT  p.v2ProductName, p.productPrice*SUM(p.productQuantity) AS Revenue
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`, 
    unnest(hits) as h, 
    unnest(h.product) as p
    WHERE
  _TABLE_SUFFIX BETWEEN '20160701'
  AND '20170701'AND (p.productRevenue IS NOT NULL )
  GROUP BY v2ProductName, productPrice, productQuantity
