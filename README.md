<h1 align="center">
🚀 PostgreSQL DBA | Performance & High Availability
</h1>

<p align="center">
Scripts profissionais para administração, tuning de performance e alta disponibilidade em PostgreSQL
</p>

## 🐘 PostgreSQL Database Administration

<p align="center">
  <img 
    width="180"
    src="https://www.postgresql.org/media/img/about/press/elephant.png"
    alt="PostgreSQL Logo"
  />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/PostgreSQL-Database%20Administration-336791?style=for-the-badge&logo=postgresql" />
</p>


## 🛠️ Tecnologias & Foco

<div align="center">

<img src="https://img.shields.io/badge/PostgreSQL-Performance-336791?style=for-the-badge&logo=postgresql" />
&nbsp;
<img src="https://img.shields.io/badge/PL/pgSQL-Optimization-blue?style=for-the-badge" />
&nbsp;
<img src="https://img.shields.io/badge/DBA-HighAvailability-green?style=for-the-badge" />

</div>

---

# 📂 Estrutura do Repositório

```
postgresql-dba/
│
├── performance/
│ ├── vacuum-analyze/
│ ├── indexes/
│ ├── execution-plans/
│ ├── query-tuning/
│ └── partitioning/
│
├── maintenance/
│ ├── autovacuum/
│ ├── reindex/
│ ├── backups/
│ └── restore-tests/
│
├── monitoring/
│ ├── pg-stat-statements/
│ ├── locks/
│ ├── replication-slots/
│ └── io-analysis/
│
├── security/
│ ├── roles/
│ ├── privileges/
│ ├── row-level-security/
│ └── auditing/
│
├── ha-dr/
│ ├── streaming-replication/
│ ├── logical-replication/
│ ├── failover/
│ └── restore-scenarios/
│
└── cloud/
├── azure/
├── aws/
└── gcp/
```
---

## 🔥 Performance Tuning
- EXPLAIN / EXPLAIN ANALYZE
- Query Optimization
- Index Strategy (B-Tree, GIN, BRIN)
- Vacuum & Autovacuum tuning
- Partitioning

## 💾 Memory & I/O
- shared_buffers
- work_mem
- maintenance_work_mem
- Checkpoints tuning
- WAL configuration

## 📈 Índices
- Index usage analysis
- Reindex strategy
- Partial indexes
- Multicolumn indexes

## 🛡️ Troubleshooting
- Locks e Blocking
- Deadlocks
- Long running queries
- Replication lag
- Análise via pg_stat_activity

# 🧠 Arquitetura de Organização

```mermaid
flowchart TD
    A[PostgreSQL Instance] --> B[Performance]
    A --> C[Maintenance]
    A --> D[Monitoring]
    A --> E[Security]
    A --> F[HA/DR]

    B --> B1[Vacuum]
    B --> B2[Index Strategy]
    B --> B3[Query Tuning]

    C --> C1[Autovacuum]
    C --> C2[Backups]
    C --> C3[Reindex]

    D --> D1[Locks]
    D --> D2[pg_stat_activity]
    D --> D3[Replication Lag]

    E --> E1[Roles]
    E --> E2[Privileges]

    F --> F1[Streaming Replication]
    F --> F2[Failover]
