/*
* NVL(컬럼, NULL일 경우 반환 값)
*/

SELECT ENAME
	  , COMM
	  , NVL(COMM, 0)
FROM    EMP;

SELECT ENAME
      , SAL
      , COMM
      , NVL(COMM, 0)
      , SAL + NVL(COMM, 0)
FROM   EMP
WHERE  1 = 1
AND    JOB = 'ANALYST';

/*
* NVL2(컬럼, NULL이 아닐 경우 반환 값, NULL일 경우 반환 값)
*/

SELECT ENAME
      , COMM
      , NVL(COMM, 0)
      , NVL2(COMM, COMM, 1000)
FROM    EMP;