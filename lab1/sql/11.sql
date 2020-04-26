select officer_id, allegation_id
from data_officerallegation
where allegation_id in (
    select allegation_id
    from data_officerallegation
    group by allegation_id
    having count(*) > 1);