select 

    Name AS "이름",
    SUBSTR(jumin, 1, 2) "년도",
    SUBSTR(jumin, 3, 2) 월,
    SUBSTR(jumin, 5, 2) 일
    
from student;

--2.
--student 테이블의 tell 컬럼 사용하여 1전공 번호 (deptnol)가 201번인
--학생의 이름과 전화 번호, ')' 가 나오는 위치를 출력하세요

select 
    name,
    tel,
    INSTR(tel, ')')  괄호위치 -- AS "괄호위치"
from student
where deptno1 =201;


--3.
--Student 테이블에서 1 전공이 101번인 학생들의 tel 컬럼을 조회하여
-- 3 이 첫 번째로 나오는 위치를 이름과 전화번호와 함께 출력하세요.


select 
    name,
    tel,
    INSTR(tel, '3') "첫3의 의위치" -- "3의 위치"
from Student
where deptno1 = 101;


--4.Student 테이블을 참조해서 아래 화면과 같이 1 전공이(deptno1 컬럼) 201번인 학생의 이름과 전화번호와 지역번호를 출력하세요.
-- 단 지역번호는 숫자만 나와야 합니다. 


select 
    name,
    tel,
    SUBSTR(tel, 1, INSTR(tel, ')')-1) 지역번호
from student
where deptno1=201;
