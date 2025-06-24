
/*
참조 테이블 : panmae, product, gift
출력 데이터 : 상품명, 상품가, 구매수량, 총금액,
적립포인트, 새해2배적립포인트, 사은품명, 포인트 범위

- panmae 테이블을 기준으로 포인트를 보여준다.
- 포인트는 구매한 금액 1원당 100의 포인트를 부여한다.
(단, 01월 01인 경우는 새해 이벤트로 인해 1원당 200의 포인트를 부여한다.)
- 적립포인트와 새해2배적립포인트를 모두 보여준다.
(이 경우, 이벤트 날인 01월 01일을 제외하고는 포인트가 동일 할 것이다.)
- 새해2배적립포인트를 기준으로 해당 포인트 기준으로 받을수 있는 사은품을 보여준다.
- 사은품 명 옆에 해당 사은품을 받을 수 있는 포인트의 범위를 함께 보여준다.

* 출력 양식과 컬럼 헤더에 표기되는 이름 확인!
*/

select 
--    SUBSTR(p_date, 1,4) || '-' || SUBSTRO(p_date, 5,2) || '-' || SUBSTR(p_date,
    TO_CHAR( TO_DATE(pm.p_date), 'YYYY-MM-DD') 판매일자,
--                
    pm.P_CODE 상품코드,
    pd.p_name 상품명,
    TO_CHAR(pd.p_price, '99,999') 상품가,
    pm.p_qty 구매수량,
   TO_CHAR(pm.p_total, '99,999') 총금액,
    TO_CHAR(pm.p_total*100, '999,999')적립포인트,
--    TO_CHAR(pm.p_total*200, '999,999')새해2배적립포인트
--    TO_CHAR( TO_DATE(pm.p_date), 'MMDD'),

-- DECODE 로 사용하는방법
    TO_CHAR( DECODE(SUBSTR(pm.p_date, 5,4),'0101',pm_total*200, pm.p_total*100 새해2배적립포인트,
    gf.gname 사은품명,
    TO_CHAR(gf.g_start, '999,999') 포인트START,
    TO_CHAR(gf.g_end '999,999') 포인트 END



/*
   CASE 
--   WHEN  SUBSTR(pm.p_date, 5,4) = '0101' THEN pm.p_total*200
   ELSE pm.p_total *100
   END 새해2배적립포인트
    --날짜를 보는 2배이벤트 적용
from panmae pm, product pd
--       중복 방를위한 각자 데이터 네임에 pm과pd등으로 네임을 넣어 중복을 방지한다
where pm.p_code = pd.p_code;
--    중복 방지 네임
*/
-- gift 테이블과 조인
-- G START <=2배 적립 포인트가 <= G_END

from panmae pm, product pd, gift gf
where pm.p_code = pd.p_code;
AND DECODE(SUBSTR(pm.p_date, 5,4),'0101',pm_total*200, pm.p_total*100) BETWEEN

select * from panmae;

select * from product;

select * from gift;



