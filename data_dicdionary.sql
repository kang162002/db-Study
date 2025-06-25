/*****************************/


데이터 딕셔너리
오라클 DB에서 관련된 각종 정보를 확인 할수 있는 있는 사전

접근 자료 구분

USER_   : 현재 로그인한 사용자가 소유한 객체 정보 조회
ALL_    : 현재 로그인한 사용자가 볼수 있는 모든 객체 정보 조회
DBA_    : DB 관리자 계정에서 DB 모든 객체 정보 조회


SELECT * FROM USER_TABLES;
SELECT * FROM ALL_TABLES;
--SELECT * FROM DBA_TABLES; -- 관리자 계정이나 접근 권한이 없어 못봄


SELECT * FROM USER_VIEWS; -- 유저 뷰가 있다면 볼수있다
SELECT * FROM USER_SEQUENCES; --유저 시퀀스
SELECT * FROM USER_OBJECTS;
SELECT * FROM USER_CONSTRAINTS;
SELECT * FROM USER_CONS_COLUMNS;
SELECT * FROM USER_INDEXES;
SELECT * FROM USER_IND_COLUMNS;

SELECT * FROM ALL_USERS;
SELECT * FROM USER_ROLE_PRIVS;


--테이블 정보 조회시 사용하기 좋은 테이블
SELECT * FROM TAB
WHERE tname LIKE '%DEPT%';

select * from tab
where tname like '%MENU%';

