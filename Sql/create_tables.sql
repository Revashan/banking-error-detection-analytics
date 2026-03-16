/**creating table Transactions**/
CREATE TABLE transactions (
step INT,
transaction_type VARCHAR(50),
amount DECIMAL(15,2),
sender VARCHAR(50),
sender_balance_before DECIMAL(15,2),
sender_balance_after DECIMAL(15,2),
receiver VARCHAR(50),
receiver_balance_before DECIMAL(15,2),
receiver_balance_after DECIMAL(15,2),
is_fraud INT,
is_flagged INT,
error_type VARCHAR(50),
resolution_time_hr INT

);
