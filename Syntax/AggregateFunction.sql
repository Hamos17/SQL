/*
 * 그룹함수는 WHERE절의 조건이 거짓이어도 결과를 항상 출력
 */
SELECT MIN(SAL)
FROM   EMP
WHERE  1 = 2;


/*
 * 커미션 평균
 * NULL 값 제외한 개수로 나누기
 * [ 그룹함수는 NULL 값을 무시 ]
 */
SELECT AVG(COMM)
FROM   EMP;


/*
 * NULL 값을 0으로 치환하여 커미션 평균 계산 
 */
SELECT ROUND(AVG(NVL(COMM, 0)))
FROM   EMP;