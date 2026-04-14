
/*
select name, gender, age, medicalcondition, testresults 

from healthcare
group by name, gender, age, medicalcondition, testresults
order by medicalcondition desc; 
*/

select 
medicalcondition,
gender,
count(*) as "total patients",
ROUND (avg(age),1) as "average age",
AVG(CASE WHEN testresults ='Abnormal'THEN 1.0 ELSE 0 END) * 100 as "positive results"

from healthcare
group by medicalcondition, gender
order by medicalcondition asc;


