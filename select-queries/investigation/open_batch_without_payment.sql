SELECT
    pb.id AS batch_id,
    pb.start_date,
    pb.end_date,
    pb.batch_status
FROM pod_batch pb
LEFT JOIN pod_payment pp
    ON pb.id = pp.batch_id
WHERE pb.batch_status = 'OPEN'
  AND pp.id IS NULL;
