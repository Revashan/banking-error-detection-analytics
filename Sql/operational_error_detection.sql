/**operational_error_detection**/

SELECT
transaction_type,
COUNT(*) total_transactions,

SUM(CASE
WHEN error_type <> 'Normal'
THEN 1 ELSE 0 END) error_count,

ROUND(
SUM(CASE WHEN error_type <> 'Normal' THEN 1 ELSE 0 END)*100.0
/ COUNT(*),2
) error_rate

FROM transactions
GROUP BY transaction_type
ORDER BY error_rate DESC;
