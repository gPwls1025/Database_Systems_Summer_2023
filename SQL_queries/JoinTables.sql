SELECT
    n.*,
    l.*
FROM
    full_insurance_data.new_data AS n
JOIN
    full_insurance_data.linear_model_temp AS l
ON
    n.customer_id = l.customer_id;