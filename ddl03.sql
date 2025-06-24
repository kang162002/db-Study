/*****************************/

DDL 제약조건 KEY

PK (Primary Key) 기본키 ( 테이블에 한개만 설정 가능한 제약이있다)
FK (Foreign Key) 외래키 


select * from student; -> profno -> professor  -- 외래키 역활

select * from emp; -> deptno -> dept; 

CREATE TABLE tt03
(
    no NUMBER(3) PRIMARY KEY,   -- NOT NULL , UNIQUE 걸려있다.
    name VARCHAR2(16) NOT NULL,
    birth DATE
);


CREATE TABLE tt04
(
    no NUMBER(3) PRIMARY KEY,      -- PK 한개만 존재 제약 불가
    id VARCHAR2(32) PRIMARY KEY,   -- PK 한개만 존재 제약 불가
    name VARCHAR2(16) NOT NULL,
    birth DATE
);


CREATE TABLE tt04
(
    no NUMBER(3),    
    id VARCHAR2(32),
    name VARCHAR2(16) NOT NULL,
    birth DATE
    CONSTRAINT tt04_pk PRIMARY KEY (no, id) -- 두개의 컬럼을 묶어서 PK로 설정
);