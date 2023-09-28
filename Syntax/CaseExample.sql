-- IF - ELSE IF - ELSE IF - ELSE
-- DECODE → 등호(=) 비교만 가능
-- CASE → 등호(=) 및 부등호(>=, <=, >, <) 비교 모두 가능 
SELECT ENAME
      , JOB
      , SAL
      , CASE WHEN SAL >= 3000 THEN 500
             WHEN SAL >= 2000 THEN 300
             WHEN SAL >= 1000 THEN 200
        	 ELSE 0 END AS BONUS
FROM EMP
WHERE 1 = 1
AND   (JOB = 'SALESMAN' OR
	   JOB = 'ANALYST');
	   
	  
-- IF - ELSE
SELECT ENAME
      , JOB
      , COMM
      , CASE WHEN COMM IS NULL THEN 500
      	      ELSE 0 END BONUS
FROM EMP
WHERE 1 = 1
AND   (JOB = 'SALESMAN' OR
	   JOB = 'ANALYST');

	  
-- IF - ELSE IF - ELSE
SELECT ENAME
      , JOB
      , CASE WHEN JOB IN ('SALESMANE', 'ANALYST') THEN 1000
      		 WHEN JOB IN ('CLERK', 'MANAGER') THEN 500
      		 ELSE 0 END AS BONUS
FROM EMP;