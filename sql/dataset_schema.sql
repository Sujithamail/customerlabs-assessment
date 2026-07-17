SELECT
  column_name,
  data_type
FROM
  `bigquery-public-data.google_analytics_sample.INFORMATION_SCHEMA.COLUMNS`
WHERE
  table_name = 'ga_sessions_20170801'
ORDER BY
  ordinal_position;