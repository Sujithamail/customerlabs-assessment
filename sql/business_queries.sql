-- Top 10 Countries by Number of Sessions

SELECT
  geoNetwork.country AS country,
  COUNT(*) AS total_sessions
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY
  country
ORDER BY
  total_sessions DESC
LIMIT 10;

-- ============================================================
-- Top Traffic Sources
-- ============================================================

SELECT
    trafficSource.source,
    COUNT(*) AS sessions
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY trafficSource.source
ORDER BY sessions DESC
LIMIT 10;


-- ============================================================
-- Device Usage
-- ============================================================

SELECT
    device.deviceCategory,
    COUNT(*) AS sessions
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY device.deviceCategory
ORDER BY sessions DESC;