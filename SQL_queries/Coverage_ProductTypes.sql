CREATE table `full_insurance_data.ProductType`
as 
SELECT HHX as ID, 
NOTCOV_A as Coverage,
COVER_A as ProductType, 
HICOSTR1_A as Premium
from `full_insurance_data.full_data`;

CREATE TABLE `full_insurance_data.Coverage` as
SELECT Distinct
NOTCOV_A AS Coverage,
Case WHEN NOTCOV_A=1 THEN 'Not covered'
When NOTCOV_A=2 THEN 'Covered'
When NOTCOV_A=7 THEN 'Refused'
When NOTCOV_A=8 THEN 'Not Ascertained'
else "Do not Know" END as CoverageDesc
FROM `full_insurance_data.full_data`;
