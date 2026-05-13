# GA4 Growth Funnel Analysis

BigQuery에서 제공하는 Google Analytics 4 공개 샘플 데이터를 바탕으로, 이커머스 서비스의 Growth 지표를 분석하는 포트폴리오 프로젝트입니다.

## 프로젝트 목표

이 프로젝트에서는 CRM과 Growth Analytics 업무에서 자주 다루는 질문을 실제 이벤트 데이터로 풀어봅니다.

- 퍼널 단계별 유입 규모와 전환율은 어떻게 달라지는가
- 사용자는 어느 구간에서 가장 많이 이탈하는가
- 유입 채널과 사용자 세그먼트에 따라 성과 차이가 있는가
- 재진입과 구매 완료를 높이려면 어디를 먼저 개선해야 하는가

## 사용 데이터

분석에는 Google이 BigQuery에서 공식 제공하는 GA4 이커머스 샘플 데이터를 사용합니다.

- project: `bigquery-public-data`
- dataset: `ga4_obfuscated_sample_ecommerce`
- tables: `events_*`

이 데이터에는 3개월치 이커머스 이벤트 로그가 들어 있어, 퍼널 흐름을 살펴보고 사용자의 재방문 패턴을 해석하는 데 활용할 수 있습니다.

## 초기 분석 지표

초기 분석은 목표 JD에서 강조한 Growth 지표와 최대한 맞물리도록 아래 항목부터 정리합니다.

- 노출 지표 proxy
- 진입수
- 클릭률 proxy
- 장바구니 전환율
- 체크아웃 진행률
- 구매 전환율
- 재진입률

다만 각 지표의 최종 정의는 실제 GA4 이벤트 schema와 event name 분포를 확인한 뒤 확정합니다.

## 저장소 구조

- `docs/`
  - 프로젝트 배경, 데이터 점검 결과, 지표 정의서
- `sql/`
  - 데이터 탐색, 퍼널 지표 산출, 세그먼트 비교, 성장 기회 분석을 위한 BigQuery SQL
- `notebooks/`
  - 결과 검증과 간단한 시각화 실험
- `dashboard/`
  - 향후 대시보드 설계 메모와 BI 산출물

## 진행 순서

1. 이벤트 schema와 event name 분포를 확인합니다.
2. 분석 목적에 맞는 퍼널과 지표를 정의합니다.
3. 일자별 퍼널 모니터링 쿼리를 작성합니다.
4. device, traffic source, user type별 성과를 비교합니다.
5. 이탈이 큰 구간과 재진입 개선 여지를 찾습니다.
6. 분석 결과를 Growth 관점의 실행 제안으로 정리합니다.
