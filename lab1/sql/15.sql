select avg(salary)
from data_salary
where officer_id in (select officer_id
                    from data_officerallegation
                    group by officer_id
                    having count(*) >= 100);