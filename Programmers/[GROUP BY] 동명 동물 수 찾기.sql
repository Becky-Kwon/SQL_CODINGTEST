-- HAVING의 경우 group by 절에서 묶여진 그룹에서의 조건이고, where 절의 경우 한개의 Row별로 조건을 주는 문법!!
-- 쿼리 실행 순서 : [where -> group by -> select]
-- where 먼저 실행되는데 where 다음으로 실행되는 집계함수에 접근하려면 에러가 발생함

-- 내가 작성한 코드
SELECT NAME, COUNT(NAME) AS COUNT
FROM ANIMAL_INS
GROUP BY NAME
HAVING COUNT(NAME) >= 2
ORDER BY NAME
