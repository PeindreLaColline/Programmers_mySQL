select * from (
    select date_format(SALES_DATE, '%Y-%m-%d') SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT from ONLINE_SALE
    union
    select date_format(SALES_DATE, '%Y-%m-%d'), PRODUCT_ID, NULL USER_ID, SALES_AMOUNT from OFFLINE_SALE    
) as SALE
where SALES_DATE like '2022-03%'
order by SALES_DATE, PRODUCT_ID, USER_ID;