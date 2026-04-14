select distinct on (insurance, arrivaldate, dischargedate) 
	insurance, billingcost, arrivaldate, dischargedate 
from healthcare
where  billingcost > 10000 and arrivaldate >= '2024-01-01'
order by insurance, arrivaldate, dischargedate, billingcost desc;

select
insurance,
DATE_TRUNC('quarter', arrivaldate) as quarter,
COUNT(*) as "total visits",
ROUND(AVG(billingcost),2 ) as "average cost",
ROUND(SUM(billingcost),2 ) as "total cost"

from healthcare
where EXTRACT(YEAR from arrivaldate) = 2023
group by insurance, DATE_TRUNC('quarter', arrivaldate)
order by insurance, quarter ASC;


