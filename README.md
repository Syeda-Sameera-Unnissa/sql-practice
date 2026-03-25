# 📊 SQL Practice & Projects

![SQL](https://img.shields.io/badge/SQL-Intermediate-blue)
![Database](https://img.shields.io/badge/Database-MySQL-orange)
![Status](https://img.shields.io/badge/Progress-In%20Progress-yellow)

> Hands-on SQL practice covering fundamentals to advanced concepts, built as part of my transition into technical roles.

---

## 🚀 Overview

This repository documents my structured journey of learning SQL from fundamentals to advanced concepts. It includes:

- 50+ hands-on SQL queries across 9 topic files
- Real-world case study analysis
- Progressive learning from basics → JOINs → subqueries → case studies
- Clean schema with sample data you can run locally

---

## 👩‍💻 About

- **Name:** Syeda Sameera Unnissa
- **Background:** BTech CSE (2017) | MTech CSE (Pursuing)
- **Goal:** Building strong SQL skills for technical roles
- **Database Used:** MySQL
- **Started:** March 2026

---

## 📁 Repository Structure

```
sql-practice/
│
├── database_schema.sql
├── sample_data.sql
│
├── 01_basic_select_queries.sql
├── 02_filtering_queries.sql
├── 03_aggregation_queries.sql
├── 04_group_by_queries.sql
├── 05_joins_queries.sql
├── 06_subqueries.sql
├── 07_practice_queries_other_schema.sql
├── 08_sql_interview_questions.sql
├── 09_sql-case-study-analysis/
│
├── 10_window_functions.sql (in progress)
├── 11_cte_and_views.sql (in progress)
├── 12_complex_real_world_queries.sql (in progress)
│
└── ecommerce-analysis-project/ (coming soon)
```

---

## 📚 Topics Covered

| # | File | Topics | Status |
|---|------|--------|--------|
| 1 | 01_basic_select_queries.sql | SELECT, aliases, DISTINCT, LIMIT, ORDER BY | ✅ |
| 2 | 02_filtering_queries.sql | WHERE, AND, OR, NOT, IN, BETWEEN, LIKE, IS NULL | ✅ |
| 3 | 03_aggregation_queries.sql | COUNT, SUM, AVG, MIN, MAX | ✅ |
| 4 | 04_group_by_queries.sql | GROUP BY, HAVING, sorting, aliases | ✅ |
| 5 | 05_joins_queries.sql | INNER JOIN, LEFT JOIN, RIGHT JOIN, CROSS JOIN | ✅ |
| 6 | 06_subqueries.sql | Single row, multi row, correlated subqueries | ✅ |
| 7 | 07_practice_queries_other_schema.sql | Practice on different schema | ✅ |
| 8 | 08_sql_interview_questions.sql | Common interview questions | ✅ |
| 9 | 09_sql-case-study-analysis | Case study analysis | ✅ |

### 🟡 In Progress

| # | File | Topics | Status |
|---|------|--------|--------|
| 10 | 10_window_functions.sql | ROW_NUMBER, RANK, DENSE_RANK, LEAD, LAG, PARTITION BY | ⬜ |
| 11 | 11_cte_and_views.sql | CTEs, Recursive CTEs, Views, Temporary Tables | ⬜ |
| 12 | 12_complex_real_world_queries.sql | Multi-concept queries combining all skills | ⬜ |

**Coming soon:** End-to-end E-Commerce Sales Analysis project using a real Kaggle dataset.

---

## 🗄️ Database Setup

This project uses a custom-built schema with three tables:

### Schema Overview

```sql
CREATE TABLE Employees (
    id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    start_date DATE,
    tshirt_size VARCHAR(5),
    vacation_taken INT
);

CREATE TABLE Departments (
    id INT,
    name VARCHAR(100),
    address VARCHAR(200),
    office_manager_id INT,
    num_desks INT,
    state VARCHAR(50)
);

CREATE TABLE ComplianceTraining (
    employee_id INT,
    date_complete DATE
);
```

### Relationships
- `Employees.id = ComplianceTraining.employee_id`
- `Employees.department = Departments.name`

### Sample Data
Sample data is included in `sample_data.sql` with:
- 100 Employees
- 10 Departments
- Compliance training records for all employees

### Quick Setup

```bash
# Step 1: Create schema
mysql -u root -p < database_schema.sql

# Step 2: Insert sample data
mysql -u root -p < sample_data.sql

# Step 3: Run any practice file
mysql -u root -p < 01_basic_select_queries.sql
```

---

## 📊 Sample Query

### Top 5 Departments by Employee Count

```sql
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department
ORDER BY total_employees DESC
LIMIT 5;
```

**Insight:** Engineering and Services have the highest employee count, indicating resource-heavy departments.

---

## 📈 Skills Confidence

| Skill | Level | Notes |
|-------|-------|-------|
| SELECT & Basics | ⭐⭐⭐⭐⭐ | Strong |
| Filtering (WHERE) | ⭐⭐⭐⭐⭐ | Strong |
| Aggregation | ⭐⭐⭐⭐ | Good |
| GROUP BY & HAVING | ⭐⭐⭐⭐ | Good |
| JOINs | ⭐⭐⭐⭐ | Good — practicing more |
| Subqueries | ⭐⭐⭐ | Improving |
| Window Functions | — | Starting next |

---

## 📝 Common Mistakes I Made & Fixed

| Mistake | Fix | File |
|---------|-----|------|
| Forgot GROUP BY with aggregate functions | Always GROUP BY non-aggregated columns | `04_group_by_queries.sql` |
| Used WHERE instead of HAVING for aggregates | WHERE = before grouping, HAVING = after grouping | `04_group_by_queries.sql` |

*This table grows as I learn — mistakes are part of the process.*

---

## 🛠️ Tools & Resources

### Tools
- MySQL (local setup)
- MySQL Workbench / Terminal
- GitHub (version control)

### Learning Resources

**LinkedIn Learning:**
- SQL Essential Training — Walter Shields
- Advanced SQL for Data Scientists — Jess Pomfret
- SQL: Data Reporting and Analysis — Emma Saunders
- SQL Window Functions — Adam Wilbert

**YouTube:**
- SQL Full Course — Mosh Hamedani
- SQL Playlist — techTFQ
- SQL Interview Questions — DataWithBaraa

**Practice Platforms:**
- SQLBolt | HackerRank SQL | LeetCode SQL 50 | SQLZoo | Mode Analytics | Select Star SQL | PG Exercises

---

## 📌 Part of My Bigger Journey

This repo is part of my [22-week tech transition roadmap](https://github.com/Syeda-Sameera-Unnissa/tech-transition-roadmap).

| Repo | Topic | Status |
|------|-------|--------|
| **sql-practice (this repo)** | **SQL** | **🟡 In Progress** |
| linux-practice | Linux | ⬜ Upcoming |
| networking-notes | Networking | ⬜ Upcoming |
| aws-learning | AWS Cloud | ⬜ Upcoming |
| troubleshooting-lab | Troubleshooting | ⬜ Upcoming |
| python-learning | Python | ⬜ Upcoming |

---

*Last updated: March 2026*
