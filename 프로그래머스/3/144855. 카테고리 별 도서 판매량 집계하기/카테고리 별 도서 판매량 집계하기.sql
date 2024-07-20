select B.category, sum(BS.sales) as total_sales
    from book B
    join book_sales BS
    on B.book_Id = BS.book_id
where BS.sales_date like "2022-01%"
group by B.category
order by B.category asc;