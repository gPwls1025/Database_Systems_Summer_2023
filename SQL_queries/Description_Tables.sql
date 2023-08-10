CREATE TABLE `full_insurance_data.Alcohol_Info` as
select distinct DRKSTAT_A,
case WHEN DRKSTAT_A=1 then 'Lifetime abstainer'
when DRKSTAT_A=2 THEN 'Former infrequent'
WHEN DRKSTAT_A=3 THEN 'Former Regular'
WHEN DRKSTAT_A=4 THEN 'Former, unknown frequency'
WHEN DRKSTAT_A=5 THEN 'Current infrequent'
WHEN DRKSTAT_A=6 THEN 'Current light'
WHEN DRKSTAT_A=7 THEN 'Current moderate'
WHEN DRKSTAT_A=8 THEN 'Current heavier'
WHEN DRKSTAT_A=9 THEN 'Current drinker, frequency/level unknown'
ELSE 'Drinking status unknown' END as DRKSTAT_A_DESC
from `full_insurance_data.Alcohol`


CREATE TABLE `full_insurance_data.Smoking_Info` as
select distinct SMKCIGST_A,
case WHEN SMKCIGST_A=1 then 'Current every day smoker'
when SMKCIGST_A=2 THEN 'Current some day smoker'
WHEN SMKCIGST_A=3 THEN 'Former smoker'
WHEN SMKCIGST_A=4 THEN 'Never smoker'
WHEN SMKCIGST_A=5 THEN 'Smoker, current status unknown'
Else 'Unknown if ever smoked 'END as SMKCIGST_A_DESC
from `full_insurance_data.smoking`


CREATE TABLE `full_insurance_data.Walking_Info` as
select distinct Walking,
case WHEN Walking=1 then 'No difficulty'
when Walking=2 THEN 'Some difficulty '
WHEN Walking=3 THEN 'A lot of difficulty '
WHEN Walking=4 THEN 'Cannot do at all'
WHEN Walking=7 THEN 'Refused'
WHEN Walking=8 THEN 'Not Ascertained'
Else "Don't Know" END as Walking_DESC
from `full_insurance_data.activity`



CREATE TABLE `full_insurance_data.Sleeping_Info` as
select distinct Sleeping,
case WHEN Sleeping<8 then 'Less then 8 Hours'
when Sleeping<=24 THEN 'At least 8 Hours'
WHEN Sleeping=97  THEN 'Refused'
WHEN Sleeping=98 THEN 'Not Ascertained'
Else "Don't Know" END as Sleeping_DESC
from `full_insurance_data.activity`


CREATE TABLE `full_insurance_data.Eating_Info` as
select distinct Eating,
case WHEN Eating=1 then 'Not at all'
when Eating=2 THEN 'Several days'
WHEN Eating=3  THEN 'More than half the days'
WHEN Eating=4 THEN 'Nearly every day'
WHEN Eating=7 THEN 'Refused'
WHEN Eating=8 THEN 'Not Ascertained'
Else "Don't Know" END as Eating_DESC
from `full_insurance_data.activity`

CREATE TABLE `full_insurance_data.Meditation_Info` as
select distinct Meditation,
case WHEN Meditation=1 then 'Yes'
when Meditation=2 THEN 'No'
WHEN Meditation=7 THEN 'Refused'
WHEN Meditation=8 THEN 'Not Ascertained'
Else "Don't Know" END as Meditation_DESC
from `full_insurance_data.activity`


CREATE TABLE `full_insurance_data.Yoga_Info` as
select distinct Yoga,
case WHEN Yoga=1 then 'Yes'
when Yoga=2 THEN 'No'
WHEN Yoga=7 THEN 'Refused'
WHEN Yoga=8 THEN 'Not Ascertained'
Else "Don't Know" END as Yoga_DESC
from `full_insurance_data.activity`


CREATE TABLE `full_insurance_data.Therapy_Info` as
select distinct Therapy,
case WHEN Therapy=1 then 'Yes'
when Therapy=2 THEN 'No'
WHEN Therapy=7 THEN 'Refused'
WHEN Therapy=8 THEN 'Not Ascertained'
Else "Don't Know" END as Therapy_DESC
from `full_insurance_data.activity`


CREATE TABLE `full_insurance_data.Dr_Visit_Info` as
select distinct Dr_Visit,
case when Dr_Visit=9 THEN "Don't Know"
WHEN Dr_Visit=7 THEN 'Refused'
WHEN Dr_Visit=8 THEN 'Not Ascertained'
WHEN Dr_Visit <1 THEN 'Never'
WHEN Dr_Visit <5 then '1-4 Times'
ELSE '5+ Times' END as Dr_Visit_DESC
from `full_insurance_data.activity`

