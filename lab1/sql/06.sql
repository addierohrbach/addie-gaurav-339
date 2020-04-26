select distinct first_name, last_name
from data_officer
where suffix_name is not null
group by last_name, first_name
having count(*) > 1;