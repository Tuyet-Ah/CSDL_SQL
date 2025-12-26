select co.company_name,
  AVG(CASE WHEN e.gender = 'Female' THEN 1 ELSE 0 END) * 100 AS female_percentage,
  AVG(CASE WHEN e.gender = 'Male' THEN 1 ELSE 0 END) * 100 AS male_percentage
from companies co
join departments d on d.company_id = co.company_id
join employees e on e.dept_id = d.dept_id
group by co.company_name;