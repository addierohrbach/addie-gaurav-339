select rank
from (select rank, max, min, max-min as Range
      from (select rank, MAX(salary), MIN(salary)
            from data_salary
            group by rank) as maxmin
      order by Range DESC) as range
limit 1;
