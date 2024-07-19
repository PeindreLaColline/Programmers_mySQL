select UB.writer_id, UU.nickname, sum(UB.price) as total_sales
    from used_goods_board UB
    join used_goods_user UU
    on UB.writer_id = UU.user_id
    where UB.status = 'DONE'
group by UU.user_id
having total_sales >= 700000
order by total_sales asc;