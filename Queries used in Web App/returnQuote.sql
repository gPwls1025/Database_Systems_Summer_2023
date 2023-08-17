SELECT
    firstname,
    lastname,
    EXP(
        Gender * (SELECT gender FROM full_insurance_data.linear_model) +
        age * (SELECT age FROM full_insurance_data.linear_model) +
        (weight * 0.45359237 / POWER(height * 0.0254, 2)) * (SELECT bmi FROM full_insurance_data.linear_model) +
        region * (SELECT region FROM full_insurance_data.linear_model) + 
        region * (SELECT region FROM full_insurance_data.linear_model) +
        urban_rural * (SELECT Urban_Rural FROM full_insurance_data.linear_model) +
        education * (SELECT education FROM full_insurance_data.linear_model) +
        Num_Fam_Adult * (SELECT num_fam_adult FROM full_insurance_data.linear_model) +
        num_fam_kid * (SELECT num_fam_kid FROM full_insurance_data.linear_model) +
        region * (SELECT region FROM full_insurance_data.linear_model) +
        citizenship * (SELECT citizenship FROM full_insurance_data.linear_model) +
        drkstat_a * (SELECT drkstat_a FROM full_insurance_data.linear_model) +
        smkcigst_a * (SELECT smkcigst_a FROM full_insurance_data.linear_model) +
        health_weakImmune * (SELECT health_weakimmune FROM full_insurance_data.linear_model) +
        hypertension * (SELECT region FROM full_insurance_data.linear_model) +
        coronaryheartdisease * (SELECT coronaryheartdisease FROM full_insurance_data.linear_model) +
        angina * (SELECT angina FROM full_insurance_data.linear_model) +
        heartattack * (SELECT heartattack FROM full_insurance_data.linear_model) +
        stroke * (SELECT stroke FROM full_insurance_data.linear_model) +
        asthma * (SELECT asthma FROM full_insurance_data.linear_model) +
        cancer * (SELECT cancer FROM full_insurance_data.linear_model) +
        gestationaldiabetes * (SELECT gestationaldiabetes FROM full_insurance_data.linear_model) +
        copd * (SELECT copd FROM full_insurance_data.linear_model) +
        arthritis * (SELECT arthritis FROM full_insurance_data.linear_model) +
        dementia * (SELECT dementia FROM full_insurance_data.linear_model) +
        anxiety_disorder * (SELECT anxiety_disorder FROM full_insurance_data.linear_model) +
        depression * (SELECT depression FROM full_insurance_data.linear_model) +
        epilepsy * (SELECT epilepsy FROM full_insurance_data.linear_model) +
        chronic_fatigue_syndrome * (SELECT chronic_fatigue_syndrome FROM full_insurance_data.linear_model)
    ) AS yearlyPremium,
    (EXP(
        Gender * (SELECT gender FROM full_insurance_data.linear_model) +
        age * (SELECT age FROM full_insurance_data.linear_model) +
        (weight * 0.45359237 / POWER(height * 0.0254, 2)) * (SELECT bmi FROM full_insurance_data.linear_model) +
        region * (SELECT region FROM full_insurance_data.linear_model) +
        region * (SELECT region FROM full_insurance_data.linear_model) +
        urban_rural * (SELECT Urban_Rural FROM full_insurance_data.linear_model) +
        education * (SELECT education FROM full_insurance_data.linear_model) +
        Num_Fam_Adult * (SELECT num_fam_adult FROM full_insurance_data.linear_model) +
        num_fam_kid * (SELECT num_fam_kid FROM full_insurance_data.linear_model) +
        region * (SELECT region FROM full_insurance_data.linear_model) +
        citizenship * (SELECT citizenship FROM full_insurance_data.linear_model) +
        drkstat_a * (SELECT drkstat_a FROM full_insurance_data.linear_model) +
        smkcigst_a * (SELECT smkcigst_a FROM full_insurance_data.linear_model) +
        health_weakImmune * (SELECT health_weakimmune FROM full_insurance_data.linear_model) +
        hypertension * (SELECT region FROM full_insurance_data.linear_model) +
        coronaryheartdisease * (SELECT coronaryheartdisease FROM full_insurance_data.linear_model) +
        angina * (SELECT angina FROM full_insurance_data.linear_model) +
        heartattack * (SELECT heartattack FROM full_insurance_data.linear_model) +
        stroke * (SELECT stroke FROM full_insurance_data.linear_model) +
        asthma * (SELECT asthma FROM full_insurance_data.linear_model) +
        cancer * (SELECT cancer FROM full_insurance_data.linear_model) +
        gestationaldiabetes * (SELECT gestationaldiabetes FROM full_insurance_data.linear_model) +
        copd * (SELECT copd FROM full_insurance_data.linear_model) +
        arthritis * (SELECT arthritis FROM full_insurance_data.linear_model) +
        dementia * (SELECT dementia FROM full_insurance_data.linear_model) +
        anxiety_disorder * (SELECT anxiety_disorder FROM full_insurance_data.linear_model) +
        depression * (SELECT depression FROM full_insurance_data.linear_model) +
        epilepsy * (SELECT epilepsy FROM full_insurance_data.linear_model) +
        chronic_fatigue_syndrome * (SELECT chronic_fatigue_syndrome FROM full_insurance_data.linear_model)
    ) / 12) AS MonthlyPremium
FROM full_insurance_data.`LRdata`;
