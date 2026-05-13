# Data Source

## Official Dataset

Use the public GA4 ecommerce sample dataset in BigQuery:

- project: `bigquery-public-data`
- dataset: `ga4_obfuscated_sample_ecommerce`
- source tables: `events_*`

## Planned Inspection Targets

The first profiling pass should confirm:

- available event tables and date range
- event name distribution
- `user_pseudo_id` coverage
- session identifiers in `event_params`
- ecommerce conversion events
- item array structure
- traffic source and device dimensions
- whether re-entry can be defined from repeated sessions or repeated active dates
