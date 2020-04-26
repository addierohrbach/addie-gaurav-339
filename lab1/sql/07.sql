
select area_id, count(*)
from data_allegation_areas
group by area_id
having count(*) > 1;

select area_id, sum(count)
from data_racepopulation
group by area_id
order by area_id;

select id
from data_area
order by id;