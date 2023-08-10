
--store coefficients into table 
create table full_insurance_data.linear_model(
gender float64,
age float64,
BMI float64,
Num_Fam_Adult	float64,
Health_WeakImmune float64,
Num_Fam_Kid float64, 
SMKCIGST_A float64,
DRKSTAT_a float64, 
Hypertension float64,
High_Cholesteral float64,
CoronaryHeartDisease float64, 
Angina float64,
HeartAttack float64,
Stroke float64,
Asthma float64,
Cancer float64,
GestationalDiabetes float64,
COPD float64,
Arthritis float64,
Dementia float64,
Anxiety_Disorder float64,
Depression float64, 
Elipsey float64,
Chronic_Fatigue_Syndrome float64,
Citizenship float64,
Urban_Rural float64,
Education float64 ,
interercept float64);

insert  into `full_insurance_data.linear_model`
values (-0.03011279,  0.0023621 ,  0.00124841,  0.25877552,  0.05656027,
         0.07866439,  0.047106  ,  0.01055876,  0.02342574,  0.01672061,
         0.01349737, -0.01319576,  0.15674787, -0.16825694, -0.04381054,
         0.00477326,  0.04166865,  0.13575882,  0.07433969, -0.03882835,
         0.0067869 , -0.01155578, -0.06684962,  0.00216878,  0.03724319,
        -0.0144744 ,  0.00534485,7.47009931);
-----FIND THOSE WHO DO NOT HAVE INSURANCE
--disease
create temporary table `full_insurance_data.disease` as
SELECT
    HP.ID,
    HP.Health_Condition_ID,
    HP.Hypertension,
    HP.High_Cholesterol,
    HP.CoronaryHeartDisease,
    HP.Angina,
    HP.HeartAttack,
    HP.Stroke,
    HP.Asthma,
    HP.Cancer,
    HP.Prediabetes,
    HP.GestationalDiabetes,
    HP.COPD,
    HP.Arthritis,
    HP.Dementia,
    HP.Anxiety_Disorder,
    HP.Depression,
    HP.Epilepsy,
    CC.Chronic_Fatigue_Syndrome
FROM
    full_insurance_data.Health_Problem AS HP
JOIN
    full_insurance_data.Current_Conditions AS CC
ON
    HP.ID = CC.ID
create  temporary table `full_insurance_data.Current_Condition` as
SELECT
    ID, 
    Health_Condition_ID,
    Weight,
    Height,
    Pregnant,
    Health_WeakImmune,
    (Weight * 0.45359237) / POWER((Height * 0.0254), 2) AS BMI
FROM
    full_insurance_data.Current_Conditions


create temporary table `full_insurance_data.LS` AS
SELECT A.ID,DRKSTAT_A,SMKCIGST_A
FROM full_insurance_data.Alcohol AS A
JOIN full_insurance_data.smoking AS S
ON A.ID = S.ID
JOIN full_insurance_data.activity AS Act
ON A.ID = Act.ID

create temporary table demographic
as
SELECT ID, 
Urban_Rural,
Region,
Gender,
Age,
Race,
Education,
Num_Fam_Adult,
Num_Fam_Kid, 
Current_MaritalStatus,
Citizenship,
JobYN,
Housing
FROM full_insurance_data.Demographic


create temporary table full_insurance_data.merged_df as
SELECT 
d.ID, 
d.Urban_Rural,
d.Region,
d.Gender,
d.Age,
d.Education,
d.Num_Fam_Adult,
d.Num_Fam_Kid, 
c.Health_WeakImmune,
d.Citizenship,
l.DRKSTAT_a,
L.SMKCIGST_A ,
di.Hypertension, 
di.High_Cholesterol, 
di.CoronaryHeartDisease, 
di.Angina,
di.HeartAttack, 
di.Stroke, 
di.Asthma, 
di.Cancer, 
di.GestationalDiabetes, 
di.COPD, 
di.Arthritis, 
di.Dementia,
di.Anxiety_Disorder, 
di.Depression, 
di.Epilepsy, 
di.Chronic_Fatigue_Syndrome,
c.BMI
FROM `full_insurance_data.Demographic` as D
join `full_insurance_data.LS`  l
on l.ID=d.id
join full_insurance_data.disease di
on d.id=di.id
JOIN `full_insurance_data.ProductType` P
ON P.ID=D.ID
join `full_insurance_data.current_condition` c
on c.ID=d.id
WHERE --uncovered insurance
P.COVERAGE=1

SELECT ID,
Urban_Rural*(SELECT Urban_Rural FROM `full_insurance_data.linear_model`)+
Gender*(SELECT gender FROM `full_insurance_data.linear_model`)+
AGE*(SELECT AGE FROM `full_insurance_data.linear_model`)+
Education*(SELECT Education FROM `full_insurance_data.linear_model`)+
Num_Fam_Adult*(SELECT Num_Fam_Adult FROM `full_insurance_data.linear_model`)+
Num_Fam_Kid*(SELECT Num_Fam_Kid FROM `full_insurance_data.linear_model`)+
Health_WeakImmune*(SELECT Health_WeakImmune FROM `full_insurance_data.linear_model`)+
DRKSTAT_A*(SELECT DRKSTAT_a FROM `full_insurance_data.linear_model`)+
SMKCIGST_A*(SELECT SMKCIGST_A FROM `full_insurance_data.linear_model`)+
Hypertension*(SELECT Hypertension FROM `full_insurance_data.linear_model`)+
High_Cholesterol*(SELECT High_Cholesteral FROM `full_insurance_data.linear_model`)+
CoronaryHeartDisease*(SELECT CoronaryHeartDisease FROM `full_insurance_data.linear_model`)+
Angina*(SELECT Angina FROM `full_insurance_data.linear_model`)+
HeartAttack*(SELECT HeartAttack FROM `full_insurance_data.linear_model`)+
Stroke*(SELECT Stroke FROM `full_insurance_data.linear_model`)+
Asthma*(SELECT Asthma FROM `full_insurance_data.linear_model`)+
Cancer*(SELECT Cancer FROM `full_insurance_data.linear_model`)+
GestationalDiabetes*(SELECT GestationalDiabetes FROM `full_insurance_data.linear_model`)+COPD*(SELECT COPD FROM `full_insurance_data.linear_model`)+
Arthritis*(SELECT Arthritis FROM `full_insurance_data.linear_model`)+
Dementia*(SELECT Dementia FROM `full_insurance_data.linear_model`)+
Anxiety_Disorder*(SELECT Anxiety_Disorder FROM `full_insurance_data.linear_model`)+
Depression*(SELECT Depression FROM `full_insurance_data.linear_model`)+
Epilepsy*(SELECT Elipsey FROM `full_insurance_data.linear_model`)+
ifnull(Chronic_Fatigue_Syndrome,8)*(SELECT Chronic_Fatigue_Syndrome FROM `full_insurance_data.linear_model`)+(SELECT interercept FROM `full_insurance_data.linear_model`) as LogPremium
 FROM `full_insurance_data.merged_df`









