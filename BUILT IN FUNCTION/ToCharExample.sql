/*
 * 숫자형 데이터 유형을 문자형으로 변환하거나 날짜형 데이터 유형을 문자형으로 변환할 때 TO_CHAR 함수를 사용 
 * 날짜를 문자로 변환해서 출력하면 날짜에서 년, 월, 일, 요일 등을 추출해서 출력 가능
 */

-- 입사한 요일, 월급에 천 단위를 구분하여 출력
SELECT ENAME
      , HIREDATE 
      , TO_CHAR(HIREDATE, 'DAY') AS 요일
      , TO_CHAR(SAL, '999,999')  AS 월급 
FROM   EMP
WHERE  1 = 1
AND    ENAME = 'SCOTT';


-- 날짜를 문자로 변환해서 날짜에서 년, 월, 일, 요일 등을 추출
SELECT HIREDATE
	  , TO_CHAR(HIREDATE, 'RRRR') AS 연도
	  , TO_CHAR(HIREDATE, 'MM')   AS 달
	  , TO_CHAR(HIREDATE, 'DD')   AS 일
	  , TO_CHAR(HIREDATE, 'DAY')  AS 요일
FROM    EMP
WHERE   ENAME = 'KING';


-- 1981년도에 입사한 사원의 이름과 입사일을 출력
SELECT ENAME
      , HIREDATE
FROM    EMP
WHERE   1 = 1
AND     TO_CHAR(HIREDATE, 'RRRR') = '1981';