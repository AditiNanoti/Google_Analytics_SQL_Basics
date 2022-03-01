SELECT 
COUNT(TrafficSource.referralpath) AS Referral_Path, COUNT(TrafficSource.campaign) AS campaign, COUNT(TrafficSource.source) AS Source, 
COUNT(TrafficSource.medium) AS Medium, COUNT(TrafficSource.keyword) AS Keyword, COUNT(TrafficSource.adcontent) AS Adcontent
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE
  _TABLE_SUFFIX BETWEEN '20160701'
  AND '20170701'
