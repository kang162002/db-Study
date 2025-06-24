1.
student, department 테이블 활용
학과 이름, 학과별 최대키,
학과별 최대키를 가진 학생들의 이름과 키를 출력 하세요.


select * from student;

select * from department;


--다중컬럼
--서브쿼리에서 계산후 비교
-- 순위


select C.dname, A.max_height, B.name, B.height
from ( 
            select deptno1, MAX(height) 
            from student
            group by deptno1)A, student b, department C
    where A.deptno1 = B.deptnol
        AND A.max_height = B.height
        AND B.deptno1 = C.deptno;
             --인라인뷰(임시테이블)



select d.dname, 
s.height MAX_HEIGHT,
s.name,
s.height
from student s, department d
where (deptno1, height) IN ( select deptno1, MAX(height) 
                                from student
                                group by deptno1)
    AND  s.deptno1 = d.deptno;
    
    
    
    