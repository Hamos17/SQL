/*
 * [순위함수(RANK, DENSE_RANK)]
 * 순위 함수의 순위는 OVER 함수 내부의 ORDER BY 컬럼 값으로 결정
 * 1. RANK(): 중복 순위 개수만큼 다음 순위 값을 증가
 * 2. DENSE_RANK(): 중복 순위가 존재해도 순차적으로 다음 순위 값을 표시
 * 조회된 결과에서 그룹별로 순위를 부여해야 하는 경우 [PARTITION BY]절을 사용
 */

/*
 * 직업이 ANALYST, MANAGER인 사원들의 이름, 직업, 월급, [월급의 순위] 출력
 * RANK()는 순위를 출력하는 데이터 분석함수
 * RANK() 뒤 OVER 다음에 나오는 괄호 안에 출력하고 싶은 데이터를 정렬하는 SQL 문장을 넣으면 그 컬럼 값에 대한 데이터의 순위가 출력
 */
SELECT ENAME
	  , JOB
	  , SAL
	  , RANK() OVER (ORDER BY SAL DESC) AS 순위
FROM   EMP
WHERE  1 = 1
AND    JOB IN ('ANALYST', 'MANAGER');


/*
* 직업별로 월급이 높은 순서대로 순위를 부여
* 직업별로 묶어서 순위를 부여하기 위해 PARTITION BY를 사용
*/
SELECT ENAME
      , SAL
      , JOB
      , RANK() OVER (PARTITION BY JOB ORDER BY SAL DESC) AS 순위
FROM   EMP;


/*
 * 직업이 ANALYST, MANAGER인 사원들의 이름, 직업, 월급, 월급 순위를 출력
 * 동일 순위의 사원이 있을 경우에도 다음 순위 값을 표시
 * 1, 1, 3 -> X
 * 1, 1, 2 -> O
 */
 SELECT ENAME
       , JOB
       , SAL
       , RANK() OVER (ORDER BY SAL DESC)        AS RANK
       , DENSE_RANK() OVER (ORDER BY SAL DESC)  AS DENSE_RANK
FROM     EMP
WHERE   1 = 1
AND     JOB IN ('ANALYST', 'MANAGER');


/*
 * 81년도에 입사한 사원들의 직업, 이름, 월급, 순위를 출력
 * 단, 직업별로 월급이 높은 순서대로 순위를 부여 
 */
SELECT JOB
      , ENAME
      , SAL
      , DENSE_RANK() OVER(PARTITION BY JOB ORDER BY SAL DESC) AS RANK
FROM    EMP
WHERE  1 = 1
AND    HIREDATE BETWEEN TO_DATE('1981/01/01', 'RRRR/MM/DD') AND TO_DATE('1981/12/31', 'RRRR/MM/DD');