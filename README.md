# SQL
:abc: SQL Study

### 그룹함수
- 그룹함수로 조건을 명시할 때는 WHERE절 대신 HAVING절을 사용
- 그룹함수는 NULL 값을 무시
  - COUNT(COMM), COUNT(*)
- 그룹함수는 WHERE절의 조건이 거짓이어도 결과를 항상 출력
  - 함수는 항상 결과를 리턴
  - WHERE절의 조건이 거짓이어도 no row select라고 출력되지 않고 NULL 값을 리턴


### 아우터 조인의 특징
- 아우터 조인은 기준 데이터 집합과 참조 데이터 집합으로 구분되어 조인이 이루어짐
- 참조 데이터 집합은 조인 조건에 (+)가 표시된 쪽이며 반대쪽은 기준 데이터 집합이 됨
- 기준 데이터 집합은 조인 조건을 만족하지 않아도 필터 조건만 만족하면 결과가 나옴
  - 이때, 참조 데이터 집합의 결과는 NULL 값으로 채워짐
- 참조 데이터 집합의 필터 조건에 (+)를 표시하면 아우터 조인 전에 필터가 됨
- 참조 데이터 집합의 필터 조건에 (+)를 표시하지 않으면 아우터 조인 후에 필터가 됨
- 일반적으로 참조 데이터 집합의 필터 조건에는 (+)를 표시
  - 참조 데이터 집합의 필터 조건에 (+) 표시를 제외해야 원하는 결과가 나온다면 이너 조인을 사용
- 참조 데이터 집합이 다른 집합과 조인될 때는 기준 집합으로서 아우터 조인해야 함