select avg(count)
from (select officer_id, count(*)
        from data_award
        where officer_id in (select officer_id
                            from data_officerallegation
                            group by officer_id
                            having count(*) < 10)
        group by officer_id
        having count(*) > 0) as counts;