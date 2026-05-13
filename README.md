# GA4 Growth Funnel Analysis

Portfolio project for analyzing ecommerce growth metrics with the Google Analytics 4 public sample dataset in BigQuery.

## Project Goal

This project is designed to mirror CRM and Growth Analytics work such as:

- monitoring funnel volume and conversion metrics
- identifying drop-off points
- comparing growth performance across acquisition channels and user segments
- surfacing opportunities to improve re-entry and purchase completion

## Public Dataset

Google provides an official GA4 ecommerce sample dataset in BigQuery:

- project: `bigquery-public-data`
- dataset: `ga4_obfuscated_sample_ecommerce`
- tables: `events_*`

The dataset covers a 3-month ecommerce event window and contains event-level user behavior data suitable for funnel and retention-style analysis.

## Initial Growth Metrics

The project will start with metrics that map closely to the target JD:

- exposure proxy
- entry volume
- click-through proxy
- cart rate
- checkout progression rate
- purchase conversion rate
- repeat entry rate

Metric definitions will be finalized after inspecting the actual GA4 event schema and event names.

## Repository Structure

- `docs/`
  - project framing, data profiling notes, metric definitions
- `sql/`
  - BigQuery SQL for profiling, funnel metrics, segmentation, opportunity analysis
- `notebooks/`
  - optional validation and chart experiments
- `dashboard/`
  - future dashboard notes or BI-ready exports

## Suggested Workflow

1. Inspect event schema and event name coverage
2. Define business funnel and metric dictionary
3. Build daily funnel monitoring queries
4. Compare by device, traffic source, and user type
5. Identify high-impact drop-off and re-entry opportunities
6. Summarize findings as Growth recommendations
