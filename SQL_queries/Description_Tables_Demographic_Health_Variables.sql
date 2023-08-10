CREATE TABLE `full_insurance_data.Age_Info` as
select distinct Age,
case WHEN Age=85 then '85+ yo'
Else 'Refused or unclear'END as Age_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.Race_Info` as
select distinct Race,
case WHEN Race=1 then 'White'
when Race=2 then 'Black/African American'
when Race=3 then 'Asian'
when Race=4 then 'American Indian and Alaska Native'
when Race=5 then 'American Indian and Alaska Native and any other group'
when Race=6 then 'Other single and multiple races'
Else 'Refused or unclear'END as Race_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.Ethnicity_Info` as
select distinct Ethnicity,
case WHEN Ethnicity=1 then 'Hispanic Origin - Yes'
when Ethnicity=2 then 'Hispanic Origin - No'
Else 'Refused or unclear'END as Ethnicity_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.Education_Info` as
select distinct Education,
case WHEN Education=1 then 'Grade 1-11'
when Education=2 then '12th grade, no diploma'
when Education=3 then 'GED or equivalent'
when Education=4 then 'High School Graduate'
when Education=5 then 'Some college, no degree'
when Education=6 or Education=7 then 'Associate degree'
when Education=8 then 'Bachelors degree (Example: BA, AB, BS, BBA)'
when Education=9 then 'Masters degree (Example: MA, MS, MEng, MEd, MBA)'
when Education=10 then 'Professional School or Doctoral degree (Example: MD, DDS, DVM, JD, PhD, EdD)'
when Education=0 then 'Never attended/kindergarten only'
Else 'Refused or unclear'END as Education_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.Num_Fam_Adult_Info` as
select distinct Num_Fam_Adult,
case WHEN Num_Fam_Adult=1 then '1 adult'
when Num_Fam_Adult=2 then '2 adults'
when Num_Fam_Adult=3 then '3+ adults'
Else 'Not Ascertained'END as Num_Fam_Adult_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.Num_Fam_Kid_Info` as
select distinct Num_Fam_Kid,
case WHEN Num_Fam_Kid=1 then '1 child'
when Num_Fam_Kid=2 then '2 children'
when Num_Fam_Kid=3 then '3+ children'
when Num_Fam_Kid=0 then '0 children'
Else 'Not Ascertained'END as Num_Fam_Kid_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.SexId_Info` as
select distinct SexId,
case WHEN SexId=1 then 'Gay/Lesbian'
when SexId=2 then 'Straight'
when SexId=3 then 'Bisexual'
when SexId=4 then 'Something else'
when SexId=5 then 'I dont know'
Else 'Refused/Not Ascertained'END as SexId_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.MaritalStatus_Info` as
select distinct Current_MaritalStatus,
case WHEN Current_MaritalStatus=1 then 'Married, spouse is present'
when Current_MaritalStatus=2 then 'Married, spouse is not present'
when Current_MaritalStatus=3 then 'Married, spouse presence unknown'
when Current_MaritalStatus=4 then 'Widowed'
when Current_MaritalStatus=5 then 'Divorced'
when Current_MaritalStatus=6 then 'Separated'
when Current_MaritalStatus=7 then 'Never married'
when Current_MaritalStatus=8 then 'Living with a partner'
Else 'Unknown'END as Current_MaritalStatus_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.Citizenship_Info` as
select distinct Citizenship,
case WHEN Citizenship=1 then 'Yes - Citizen of United States'
when Citizenship=2 then 'No - Not a citizen of United States'
when Citizenship=7 then 'Refused'
when Citizenship=8 then 'Not Ascertained'
Else 'Refused'END as Citizenship_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.InSchool_Info` as
select distinct InSchool,
case WHEN InSchool=1 then 'Yes'
when InSchool=2 then 'No'
when InSchool=7 then 'Refused'
when InSchool=8 then 'Not Ascertained'
Else 'Refused'END as InSchool_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.Job_Info` as
select distinct JobYN,
case WHEN JobYN=1 then 'Yes'
when JobYN=2 then 'No'
when JobYN=7 then 'Refused'
when JobYN=8 then 'Not Ascertained'
Else 'Refused'END as Job_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.InsuranceYN_Info` as
select distinct HealthInsuranceYN,
case WHEN HealthInsuranceYN=1 then 'Yes'
when HealthInsuranceYN=2 then 'No'
when HealthInsuranceYN=7 then 'Refused'
when HealthInsuranceYN=8 then 'Not Ascertained'
Else 'Dont know'END as Insurance_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.Housing_Info` as
select distinct Housing,
case WHEN Housing=1 then 'Owned or being bought'
when Housing=2 then 'Rented'
when Housing=3 then 'Other arrangement'
when Housing=7 then 'Refused'
when Housing=8 then 'Not Ascertained'
Else 'Dont know'END as Housing_DESC
from `full_insurance_data.Demographic`;

CREATE TABLE `full_insurance_data.GenHealth_Info` as
select distinct Gen_Health,
case WHEN Gen_Health=1 then 'Excellent'
when Gen_Health=2 then 'Very good'
when Gen_Health=3 then 'Good'
when Gen_Health=4 then 'Fair'
when Gen_Health=5 then 'Poor'
when Gen_Health=7 then 'Refused'
when Gen_Health=8 then 'Not Ascertained'
Else 'Dont know'END as Gen_Health_DESC
from `full_insurance_data.Current_Conditions`;

CREATE TABLE `full_insurance_data.Hypertension_Info` as
select distinct Hypertension,
case WHEN Hypertension=1 then 'Yes'
when Hypertension=2 then 'No'
when Hypertension=7 then 'Refused'
when Hypertension=8 then 'Not Ascertained'
Else 'Dont know'END as Hypertension_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.Cholesterol_DESC` as
select distinct High_Cholesterol,
case WHEN High_Cholesterol=1 then 'Yes'
when High_Cholesterol=2 then 'No'
when High_Cholesterol=7 then 'Refused'
when High_Cholesterol=8 then 'Not Ascertained'
Else 'Dont know'END as Cholesterol_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.Asthma` as
select distinct Asthma,
case WHEN Asthma=1 then 'Yes'
when Asthma=2 then 'No'
when Asthma=7 then 'Refused'
when Asthma=8 then 'Not Ascertained'
Else 'Dont know'END as Asthma_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.Diabetes` as
select distinct Gestational_Diabetes,
case WHEN Gestational_Diabetes=1 then 'Yes'
when Gestational_Diabetes=2 then 'No'
when Gestational_Diabetes=7 then 'Refused'
when Gestational_Diabetes=8 then 'Not Ascertained'
Else 'Dont know'END as Diabetes_DESC
from `full_insurance_data.Current_Conditions`;

CREATE TABLE `full_insurance_data.CFS_Info` as
select distinct Chronic_Fatigue_Syndrome,
case WHEN Chronic_Fatigue_Syndrome=1 then 'Yes'
when Chronic_Fatigue_Syndrome=2 then 'No'
when Chronic_Fatigue_Syndrome=7 then 'Refused'
when Chronic_Fatigue_Syndrome=8 then 'Not Ascertained'
Else 'Dont know'END as CFS_Info
from `full_insurance_data.Current_Conditions`;

CREATE TABLE `full_insurance_data.Weak_Immune_Info` as
select distinct Health_WeakImmune,
case WHEN Health_WeakImmune=1 then 'Yes'
when Health_WeakImmune=2 then 'No'
when Health_WeakImmune=7 then 'Refused'
when Health_WeakImmune=8 then 'Not Ascertained'
Else 'Dont know'END as Weak_Immune_DESC
from `full_insurance_data.Current_Conditions`;

CREATE TABLE `full_insurance_data.Pregnant_Info` as
select distinct Pregnant,
case WHEN Pregnant=1 then 'Yes'
when Pregnant=2 then 'No'
when Pregnant=7 then 'Refused'
when Pregnant=8 then 'Not Ascertained'
Else 'Dont know'END as Pregnant_DESC
from `full_insurance_data.Current_Conditions`;

CREATE TABLE `full_insurance_data.Coronary_Heart_Disease_Info` as
select distinct CoronaryHeartDisease,
case WHEN CoronaryHeartDisease=1 then 'Yes'
when CoronaryHeartDisease=2 then 'No'
when CoronaryHeartDisease=7 then 'Refused'
when CoronaryHeartDisease=8 then 'Not Ascertained'
Else 'Dont know'END as Coronary_Heart_Disease_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.Angina_Info` as
select distinct Angina,
case WHEN Angina=1 then 'Yes'
when Angina=2 then 'No'
when Angina=7 then 'Refused'
when Angina=8 then 'Not Ascertained'
Else 'Dont know'END as Angina_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.Heart_Attack_Info` as
select distinct HeartAttack,
case WHEN HeartAttack=1 then 'Yes'
when HeartAttack=2 then 'No'
when HeartAttack=7 then 'Refused'
when HeartAttack=8 then 'Not Ascertained'
Else 'Dont know'END as Heart_Attack_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.Cancer_Info` as
select distinct Cancer,
case WHEN Cancer=1 then 'Yes'
when Cancer=2 then 'No'
when Cancer=7 then 'Refused'
when Cancer=8 then 'Not Ascertained'
Else 'Dont know'END as Cancer_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.Prediabetes_Info` as
select distinct Prediabetes,
case WHEN Prediabetes=1 then 'Yes'
when Prediabetes=2 then 'No'
when Prediabetes=7 then 'Refused'
when Prediabetes=8 then 'Not Ascertained'
Else 'Dont know'END as Prediabetes_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.COPD_Info` as
select distinct COPD,
case WHEN COPD=1 then 'Yes'
when COPD=2 then 'No'
when COPD=7 then 'Refused'
when COPD=8 then 'Not Ascertained'
Else 'Dont know'END as COPD_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.Arthritis_Info` as
select distinct Arthritis,
case WHEN Arthritis=1 then 'Yes'
when Arthritis=2 then 'No'
when Arthritis=7 then 'Refused'
when Arthritis=8 then 'Not Ascertained'
Else 'Dont know'END as Arthritis_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.Dementia_Info` as
select distinct Dementia,
case WHEN Dementia=1 then 'Yes'
when Dementia=2 then 'No'
when Dementia=7 then 'Refused'
when Dementia=8 then 'Not Ascertained'
Else 'Dont know'END as Dementia_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.Anxiety_Disorder_Info` as
select distinct Anxiety_Disorder,
case WHEN Anxiety_Disorder=1 then 'Yes'
when Anxiety_Disorder=2 then 'No'
when Anxiety_Disorder=7 then 'Refused'
when Anxiety_Disorder=8 then 'Not Ascertained'
Else 'Dont know'END as Anxiety_Disorder_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.Depression_Info` as
select distinct Depression,
case WHEN Depression=1 then 'Yes'
when Depression=2 then 'No'
when Depression=7 then 'Refused'
when Depression=8 then 'Not Ascertained'
Else 'Dont know'END as Depression_DESC
from `full_insurance_data.Health_Problem`;

CREATE TABLE `full_insurance_data.Epilepsy_Info` as
select distinct Epilepsy,
case WHEN Epilepsy=1 then 'Yes'
when Epilepsy=2 then 'No'
when Epilepsy=7 then 'Refused'
when Epilepsy=8 then 'Not Ascertained'
Else 'Dont know'END as Epilepsy_DESC
from `full_insurance_data.Health_Problem`;
