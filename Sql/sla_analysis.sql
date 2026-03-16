/**sla violation analysis**/
SELECT
transaction_type,

AVG(resolution_time_hr) avg_resolution,

SUM(
CASE
WHEN resolution_time_hr > 24
THEN 1 ELSE 0
END
) sla_violation

FROM transactions

WHERE error_type <> 'Normal'

GROUP BY transaction_type
