select star
from data_officerbadgenumber
group by star
having count(*) > 1;