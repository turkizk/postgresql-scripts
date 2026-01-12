# PostgreSQL Advanced SELECT Queries

This repository contains advanced and real-world PostgreSQL **SELECT-only** queries.

The focus is on:
- Complex joins
- Common Table Expressions (CTE)
- Window functions
- Aggregations and percentile-based analysis
- Operational reporting and incident investigation

All queries are written based on **production support and operational analysis** use cases.

---

## Repository Structure

postgresql-scripts/
├── analysis/ # Performance & latency analysis queries
├── reporting/ # Business and operational reports
├── investigation/ # Data inconsistency and incident analysis


---

## Use Cases

- Performance degradation analysis (p95 / p99 latency)
- Incident root cause investigation
- Operational data validation
- Ad-hoc reporting for logistics & delivery systems

---

## Important Notes

- All queries are **read-only**
- No `UPDATE`, `DELETE`, or `DDL` operations
- Safe to run on **production read replicas**

---

## Technologies

- PostgreSQL
- SQL (CTE, Window Functions, Aggregations)

---

## Author

Senior IT Support & Software Support Specialist  
Focused on production systems, data analysis, and incident resolution.


## Query Types

This repository focuses on complex SELECT queries used for:

- Performance analysis (p95 / p99 latency)
- Operational investigations
- Incident root cause analysis
- Reporting and data validation

All queries are read-only and safe to run on production replicas.


