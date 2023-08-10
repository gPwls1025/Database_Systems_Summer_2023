CREATE SEARCH INDEX idx_diagnosis ON full_insurance_data.Health_Problem(ALL COLUMNS);
SELECT * FROM full_insurance_data.Health_Problem WHERE SEARCH(Health_Problem, 'Cancer');

CREATE SEARCH INDEX idx_demographic ON full_insurance_data.Demographic (ALL COLUMNS);
SELECT * FROM full_insurance_data.Demographic WHERE SEARCH(Demographic, 'HealthInsuranceYN');