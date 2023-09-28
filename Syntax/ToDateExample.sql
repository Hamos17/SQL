-- 날짜 데이터 검색 시에는 접속한 세션의 날짜 형식을 확인
SELECT *
FROM   NLS_SESSION_PARAMETERS
WHERE  1 = 1
AND     PARAMETER = 'NLS_DATE_FORMAT';


-- 특정 날짜에 입사한 사원의 이름과 입사일 출력
SELECT ENAME
      , HIREDATE
FROM    EMP
WHERE   1 = 1
AND     HIREDATE = TO_DATE('81/11/17', 'RR/MM/DD');


-- 현재 접속한 세션의 날짜 포맷을 특정 형식으로 변경
-- ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/RR';