WITH rapor AS (
    SELECT account_to_id, account_from_id, transfer_status
    FROM pod_transaction
    WHERE transaction_ref = 'TSM09596526005573622'
      AND transfer_status = 'WAITING_CONFIRMATION'
)
SELECT
    SUM(pt.amount)
FROM pod_transaction pt
JOIN rapor r 
    ON pt.account_to_id = r.account_to_id
   AND pt.account_from_id = r.account_from_id
WHERE pt.transfer_status = 'WAITING_CONFIRMATION';
