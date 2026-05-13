-- Step 1: Confirm event date coverage and table volume.

SELECT
  MIN(event_date) AS min_event_date,
  MAX(event_date) AS max_event_date,
  COUNT(*) AS event_rows,
  COUNT(DISTINCT user_pseudo_id) AS distinct_users
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`;
