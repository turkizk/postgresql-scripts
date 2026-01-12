SELECT
    DATE(pb.end_date) AS batch_date,
    COUNT(*) AS batch_count,
    AVG(pb.end_date - pb.start_date) AS avg_duration,
    MAX(pb.end_date - pb.start_date) AS max_duration
FROM pod_batch pb
WHERE pb.end_date >= NOW() - INTERVAL '7 days'
GROUP BY DATE(pb.end_date)
ORDER BY batch_date;
