Create table `full_insurance_data.Alcohol`
AS

select
HHX as ID,
row_number() over (order by HHX) as Life_Style_ID,
DRKSTAT_A 
FROM `full_insurance_data.full_data`


Create table `full_insurance_data.smoking`
AS
select
HHX as ID,
row_number() over (order by HHX)+27651 as Life_Style_ID,
SMKCIGST_A
FROM `full_insurance_data.full_data`



Create table `full_insurance_data.activity`
AS
select
HHX as ID,
row_number() over (order by HHX)+55302 as Life_Style_ID,
DIFF_A as Walking,
SLPHOURS_A as Sleeping,
PHQ85_A as Eating,
MEDITATE_A as Meditation,
YOGA_A as Yoga,
MHTHRPY_A as Therapy,
URGNT12MTC_A as Dr_Visit
FROM `full_insurance_data.full_data`

Create table `full_insurance_data.Life_Style`
AS
Select * FROM (
SELECT ID,Life_Style_ID, FROM `full_insurance_data.Alcohol`
union all
SELECT ID,Life_Style_ID, FROM `full_insurance_data.smoking`
union all 
SELECT ID,Life_Style_ID, FROM `full_insurance_data.activity`
) as n


