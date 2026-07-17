-- Exploring Nested Fields

SELECT
  date,
  geoNetwork.country,
  geoNetwork.city,
  device.browser,
  device.operatingSystem,
  trafficSource.source,
  trafficSource.medium,
  totals.pageviews,
  totals.transactions
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_20170801`
LIMIT 20;