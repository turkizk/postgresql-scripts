SELECT
    c1.id AS platform_company_id,
    c1.company_name AS "platform şirket",
    c1.par_company_type AS "platform firma tipi",

    c2.id AS merchant_company_id,
    c2.company_name AS "merchant",
    c2.par_company_type AS "merchant firma tipi",

    w.warehouse_name AS "depo",
    x1.xdock_name AS "toplayan şube",
    x2.xdock_name AS "bağlı olduğu bölge",
    a.address_line_1 AS "depo adresi"
FROM company c1
JOIN company_warehouse cw
    ON cw.company_id = c1.id
   AND cw.row_status = 'ACTIVE'
JOIN warehouse w
    ON w.id = cw.warehouse_id
   AND w.row_status = 'ACTIVE'
JOIN warehouse_collection_config g
    ON g.company_warehouse_id = cw.id
   AND g.row_status = 'ACTIVE'
JOIN xdock x1
    ON x1.id = g.collection_xdock_id
   AND x1.row_status = 'ACTIVE'
JOIN xdock x2
    ON x2.id = x1.regional_office_xdock_id
   AND x2.row_status = 'ACTIVE'
JOIN address a
    ON a.id = cw.collect_address_id
   AND a.row_status = 'ACTIVE'
JOIN merchant m
    ON m.platform_company_id = c1.id
   AND m.row_status = 'ACTIVE'
JOIN company c2
    ON c2.id = m.merchant_company_id
   AND c2.row_status = 'ACTIVE'
WHERE c1.row_status = 'ACTIVE';

