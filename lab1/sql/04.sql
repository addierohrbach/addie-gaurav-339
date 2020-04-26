select first_name, last_name
from data_officer
where (2020 - birth_year) < 30
order by last_name ASC, first_name ASC;