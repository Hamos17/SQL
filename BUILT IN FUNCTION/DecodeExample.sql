/*
 * 부서번호가 10번이면 300 출력
 * 그렇지 않으면 400 출력
 * 위 조건에 다 해당되지 않으면 0 출력
 * IF - ELSE IF - ELSE
 */
SELECT ENAME									AS ENAME
      , DEPTNO									AS DEPTNO
      , DECODE(DEPTNO, 10, 300, 20, 400, 0)	 	AS BONUS
FROM   EMP;


/*
 * 사원 번호와 사원 번호가 홀수인지 짝수인지 출력
 * default 값은 생략 가능
 * IF - ELSE IF - ELSE
 */
SELECT EMPNO											AS EMPNO
      , MOD(EMPNO, 2)									AS MOD
      , DECODE(MOD(EMPNO, 2), 0, '짝수', 1, '홀수')		AS BONUS
FROM    EMP;


/*
 * 이름과 직업, 보너스 출력
 * 직업이 SALESMAN이면 보너스 50900 출력 나머지는 2000 출력
 * IF - ELSE
 */
SELECT ENAME									AS ENAME
	  , JOB										AS JOB
	  , DECODE(JOB, 'SALESMAN', 5000, 2000)		AS BONUS
FROM    EMP;