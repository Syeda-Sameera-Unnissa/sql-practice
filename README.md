# 📊 SQL Practice & Projects

![SQL](https://img.shields.io/badge/SQL-Intermediate-blue)  
![Database](https://img.shields.io/badge/Database-MySQL-orange)  
![Status](https://img.shields.io/badge/Progress-In%20Progress-yellow)

> Hands-on SQL practice covering fundamentals to advanced concepts, built as part of my transition into technical roles.

---

## 🚀 Overview

This repository documents my structured journey of learning SQL from fundamentals to advanced concepts. It includes:

- 70+ hands-on SQL queries across 12 topic files  
- Real-world case study analysis  
- Progressive learning from basics → JOINs → subqueries → window functions → case studies  
- Clean schema with sample data you can run locally  

---

## 👩‍💻 About

| Field | Details |
|------|--------|
| **Name** | Syeda Sameera Unnissa |
| **Background** | BTech CSE (2017) \| MTech CSE (Pursuing) |
| **Goal** | Building strong SQL skills for technical roles |
| **Database Used** | MySQL |
| **Started** | March 2026 |

---

## 📁 Repository Structure
```
sql-practice/
│
├── database_schema.sql                  ── Table definitions with constraints
├── sample_data.sql                      ── 100 employees, 10 departments, training records
│
├── 01_basic_select_queries.sql          ── Fundamentals
├── 02_filtering_queries.sql             ── WHERE, LIKE, IN
├── 03_aggregation_queries.sql           ── COUNT, SUM, AVG
├── 04_group_by_queries.sql              ── GROUP BY, HAVING
├── 05_joins_queries.sql                 ── All JOIN types
├── 06_subqueries.sql                    ── Nested queries
├── 07_window_functions.sql              ── ROW_NUMBER, RANK, LAG
├── 08_cte_and_views.sql                 ── WITH, CREATE VIEW
├── 09_complex_real_world_queries.sql    ── Multi-concept queries
├── 10_practice_queries_other_schema.sql ── Cross-schema practice
├── 11_sql_interview_questions.sql       ── Interview Prep
├── 12_sql_case_study_analysis.sql       ── End-to-End Analysis
│
├── ecommerce-analysis-project/          ── (Coming Soon)
└── README.md
```

---

## 📚 Topics Covered

| # | File | Topics | Status |
|---|------|--------|--------|
| 1 | 01_basic_select_queries.sql | SELECT, aliases, DISTINCT, concatenation, arithmetic | ✅ |
| 2 | 02_filtering_queries.sql | WHERE, AND, OR, NOT, LIKE, LIMIT, comparison operators | ✅ |
| 3 | 03_aggregation_queries.sql | COUNT, SUM, AVG, MIN, MAX, ROUND, conditional counting | ✅ |
| 4 | 04_group_by_queries.sql | GROUP BY, HAVING, sorting, aliases | ✅ |
| 5 | 05_joins_queries.sql | INNER, LEFT, RIGHT, FULL OUTER, SELF, CROSS joins | ✅ |
| 6 | 06_subqueries.sql | Scalar, correlated, derived tables, EXISTS, NOT EXISTS | ✅ |
| 7 | 07_window_functions.sql | ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD, PARTITION BY | ⬜ |
| 8 | 08_cte_and_views.sql | CTEs, recursive CTEs, Views, temporary tables | ⬜ |
| 9 | 09_complex_real_world_queries.sql | Multi-concept queries combining all skills | ⬜ |
| 10 | 10_practice_queries_other_schema.sql | Practice on alternate dataset (quizdata) | ✅ |
| 11 | 11_sql_interview_questions.sql | Common SQL interview questions | ⬜ |
| 12 | 12_sql_case_study_analysis.sql | End-to-end business case study | ⬜ |

---

## 🗄️ Database Setup

### Schema Overview

```sql
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    start_date DATE,
    tshirt_size VARCHAR(5),
    vacation_taken DECIMAL(5,2)
);

CREATE TABLE Departments (
    id INT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(200),
    office_manager_id INT REFERENCES Employees(id),
    num_desks INT,
    state VARCHAR(50)
);

CREATE TABLE ComplianceTraining (
    employee_id INT REFERENCES Employees(id),
    date_complete DATE
);
```

### Relationships

- Employees.id = ComplianceTraining.employee_id  
- Employees.department = Departments.name  

---

### Sample Data

- 100 Employees  
- 10 Departments  
- Compliance training records for all employees  

---

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
|------|------|------|
| SELECT & Basics | ⭐⭐⭐⭐⭐ | Strong |
| Filtering (WHERE) | ⭐⭐⭐⭐⭐ | Strong |
| Aggregation | ⭐⭐⭐⭐ | Good |
| GROUP BY & HAVING | ⭐⭐⭐⭐ | Good |
| JOINs | ⭐⭐⭐⭐ | Good — practicing more |
| Subqueries | ⭐⭐⭐ | Improving |
| Window Functions | ⬜ | Starting next |
| CTEs & Views | ⬜ | Starting next |

---

## 📝 Common Mistakes I Made & Fixed

| Mistake | Fix | File |
|--------|-----|------|
| Forgot GROUP BY with aggregate functions | Always GROUP BY non-aggregated columns | 04_group_by_queries.sql |
| Used WHERE instead of HAVING for aggregates | WHERE = before grouping, HAVING = after grouping | 04_group_by_queries.sql |
| Schema had no constraints | Added PRIMARY KEY, NOT NULL, REFERENCES, UNIQUE | database_schema.sql |
| Used INT for decimal data | Changed vacation_taken to DECIMAL(5,2) | database_schema.sql |

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

### Practice Platforms

- SQLBolt  
- HackerRank SQL  
- LeetCode SQL 50  
- SQLZoo  
- Mode Analytics  
- Select Star SQL  
- PG Exercises  

---

## 📌 Part of My Bigger Journey

| Repo | Topic | Status |
|------|------|--------|
| sql-practice (this repo) | SQL | 🟡 In Progress |
| linux-practice | Linux | ⬜ Upcoming |
| networking-notes | Networking | ⬜ Upcoming |
| aws-learning | AWS Cloud | ⬜ Upcoming |
| troubleshooting-lab | Troubleshooting | ⬜ Upcoming |
| python-learning | Python | ⬜ Upcoming |

---

**Last updated: March 2026**
