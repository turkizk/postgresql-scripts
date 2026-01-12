select pb.id,pb.amount, sum(ppd.amount) from pod_batch pb
join pod_payment pp on pb.id = pp.batch_id
join pod_payment_detail ppd on pp.id = ppd.payment_id
                              where pb.created_on_time >='2026-01-10'
                              and pb.batch_status='OPEN'
group by pb.id
