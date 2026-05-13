-- Step 0: Inspect GA4 ecommerce event coverage.
-- Dataset:
--   `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`

SELECT
  event_name,
  COUNT(*) AS event_count,
  COUNT(DISTINCT user_pseudo_id) AS users
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
GROUP BY 1
ORDER BY event_count DESC;
