-- IF - ELSE IF - ELSE
SELECT ENAME
      , DEPTNO
      , DECODE(DEPTNO, 10, 300, 20, 400, 0) AS 보너스
FROM    EMP;

-- IF - ELSE
-- default 값 생략 가능
SELECT EMPNO
      , MOD(EMPNO, 2)
      , DECODE(MOD(EMPNO, 2), 0, '짝수', 1, '홀수') AS 보너스
FROM    EMP;

-- IF - ELSE
SELECT ENAME
      , JOB
      , DECODE(JOB, 'SALESMAN', 5000, 2000) AS 보너스
FROM    EMP;