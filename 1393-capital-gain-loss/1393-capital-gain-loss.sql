select stock_name,SUM(CASE WHEN operation='sell' THEN price ELSE 0 END)-SUM(CASE WHEN operation='Buy' THEN price ELSE 0 END)  as Capital_gain_loss
from stocks
group by stock_name;