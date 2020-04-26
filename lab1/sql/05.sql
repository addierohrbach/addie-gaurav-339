select first_name, last_name
from data_officer
where birth_year = (select MAX(birth_year)
                    from data_officer);
