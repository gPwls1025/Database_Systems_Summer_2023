CREATE OR REPLACE MODEL
full_insurance_data.Cost_Prediction
OPTIONS
  ( MODEL_TYPE = 'LINEAR_REG',
    OPTIMIZE_STRATEGY = 'AUTO_STRATEGY',
    L1_REG = 0.01,
    MAX_ITERATIONS = 20,
    MIN_REL_PROGRESS = 0.001,
    DATA_SPLIT_METHOD = 'AUTO_SPLIT',
    CATEGORY_ENCODING_METHOD = 'ONE_HOT_ENCODING') AS
SELECT
  Urban_Rural,
  Region,
  Gender,
  Age,
  Education,
  Num_Fam_Adult,
  Num_Fam_Kid,
  Health_WeakImmune,
  Citizenship,
  DRKSTAT_a,
  SMKCIGST_A,
  Hypertension,
  High_Cholesterol,
  CoronaryHeartDisease,
  Angina,
  HeartAttack,
  Stroke,
  Asthma,
  Cancer,
  GestationalDiabetes,
  COPD,
  Arthritis,
  Dementia,
  Anxiety_Disorder,
  Depression,
  Epilepsy,
  Chronic_Fatigue_Syndrome,
  BMI,
  LogPremium AS label
FROM
  full_insurance_data.linear_model_temp;

