select ii.ingredient_type, sum(fh.total_order) as TOTAL_ORDER
from icecream_info as ii, first_half as fh
where ii.flavor = fh.flavor
group by ii.ingredient_type
order by fh.total_order;