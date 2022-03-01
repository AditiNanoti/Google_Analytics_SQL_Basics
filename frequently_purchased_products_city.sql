with products as (

SELECT p.v2ProductName,p.productQuantity
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
unnest (hits) as h, 
unnest(h.product) as p
WHERE
_TABLE_SUFFIX BETWEEN '20160701'
AND '20170701'


),

ga_sessions_17 as (

SELECT p.v2ProductName,p.productQuantity,geonetwork.city as city
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801`,
unnest (hits) as h, 
unnest(h.product) as p



)

select p.v2ProductName,p.productQuantity, gs17.city
FROM ga_sessions_17 as gs17
INNER JOIN products p
ON gs17.v2ProductName = p.v2ProductName
GROUP BY 1,2,3
