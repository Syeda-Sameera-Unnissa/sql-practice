# 📊 SQL Practice & Projects

A comprehensive SQL learning journey from basics to advanced concepts, including a real-world data analysis project.

## 👩‍💻 About

- **Name:** Syeda Sameera Unnissa
- **Background:** BTech CSE (2017) | MTech CSE (Pursuing)
- **Goal:** Building strong SQL skills for technical roles
- **Database Used:** MySQL
- **Started:** [15/3/2026]

---

## 📁 Repository Structure
sql-practice/
│
├── database_schema.sql → Database schema with table definitions & relationships
├── sample_data.sql → Sample data for practice
│
│ LEARNING & PRACTICE
├── 01_basic_select_queries.sql → SELECT, aliases, DISTINCT, LIMIT
├── 02_filtering_queries.sql → WHERE, AND, OR, IN, BETWEEN, LIKE, IS NULL
├── 03_aggregation_queries.sql → COUNT, SUM, AVG, MIN, MAX
├── 04_group_by_queries.sql → GROUP BY, HAVING, sorting with aliases
├── 05_joins_queries.sql → INNER JOIN, LEFT JOIN, RIGHT JOIN, CROSS JOIN
├── 06_subqueries.sql → Single row, multi row, correlated subqueries
├── 07_practice_queries_other_schema.sql → Practice on different schema
├── 08_sql_interview_questions.sql → Common SQL interview questions
├── 09_sql-case-study-analysis → SQL case study for practice
├── 10_window_functions.sql → ROW_NUMBER, RANK, DENSE_RANK, LEAD, LAG (upcoming)
├── 11_cte_and_views.sql → Common Table Expressions, Views (upcoming)
├── 12_complex_real_world_queries.sql → Multi-concept complex queries (upcoming)
│
│ PROJECT
└── ecommerce-analysis-project/ → Real-world data analysis project (upcoming)
├── README.md
├── schema_setup.sql
├── data_exploration.sql
├── business_questions.sql
└── key_findings.md



---

## 📚 Topics Covered

### ✅ Completed

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

### 🟡 Upcoming

| # | File | Topics | Status |
|---|------|--------|--------|
| 10 | 10_window_functions.sql | ROW_NUMBER, RANK, DENSE_RANK, LEAD, LAG, PARTITION BY | ⬜ |
| 11 | 11_cte_and_views.sql | CTEs, Recursive CTEs, Views, Temporary Tables | ⬜ |
| 12 | 12_complex_real_world_queries.sql | Multi-concept queries combining all skills | ⬜ |

---

## 🗄️ Database Schema

The practice queries use the following schema defined in `database_schema.sql`:

### Tables & Relationships

*(Update this section based on your actual schema. Example below:)*
employees ──────── departments
│ │
├── desks │
│ │
└── vacations │
│
projects ───────────────┘



### Quick Setup

```sql
-- Step 1: Create database
SOURCE database_schema.sql;

-- Step 2: Insert sample data
SOURCE sample_data.sql;

-- Step 3: Start practicing with any file
SOURCE 01_basic_select_queries.sql;
📈 Learning Progress
Skills Matrix
Skill	Confidence	Notes
SELECT & Basics	⭐⭐⭐⭐⭐	Strong
Filtering (WHERE)	⭐⭐⭐⭐⭐	Strong
Aggregation	⭐⭐⭐⭐	Good
GROUP BY & HAVING	⭐⭐⭐⭐	Good
JOINs	⭐⭐⭐⭐	Good — practicing more
Subqueries	⭐⭐⭐	Improving
Window Functions	⬜	Starting soon
CTEs & Views	⬜	Starting soon
Assessment Scores
Test	Date	Score	Target
First SQL Test (18 questions)	[DATE]	72%	100%
HackerRank SQL Assessment			85%+
🔨 Project: E-Commerce Sales Analysis
Status: ⬜ Upcoming (Week 3 of my learning plan)

Location: /ecommerce-analysis-project/

What I'll Build
Import a real e-commerce dataset from Kaggle into MySQL
Write 15+ analytical queries answering real business questions
Document findings with query explanations and output screenshots
Skills Used in Project
JOINs (INNER, LEFT, Self JOIN)
Window Functions (ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD)
CTEs (Common Table Expressions)
Subqueries (Single row, Multi row, Correlated)
GROUP BY, HAVING, CASE statements
Data exploration and quality checks
Business Questions I'll Answer
Top 10 products by revenue
Which month had highest sales
Average order value per customer
Customers with more than 5 orders
Month-over-month growth rate (Window Function)
Rank customers by spending (RANK/DENSE_RANK)
Running total of sales (Window Function)
Products frequently bought together (Self JOIN)
Revenue percentage per category (CTE)
Inactive customers — no orders in 3 months (Subquery)
Average time between orders per customer
Top 5 by frequency vs top 5 by revenue — overlap?
Region with highest profit margin
Seasonal trends — best quarter
Customer segmentation using CASE statements
👉 Project README with detailed findings will be added after completion

🛠️ Tools & Resources Used
Tools
MySQL (local setup)
MySQL Workbench / Terminal
GitHub for version control
Learning Resources
LinkedIn Learning:

SQL Essential Training — Walter Shields
Advanced SQL for Data Scientists — Jess Pomfret
SQL: Data Reporting and Analysis — Emma Saunders
SQL Window Functions — Adam Wilbert
YouTube:

SQL Full Course — Mosh Hamedani
SQL Playlist — techTFQ
SQL Interview Questions — DataWithBaraa
Practice Platforms:

SQLBolt
HackerRank SQL
LeetCode SQL 50
SQLZoo
Mode Analytics
🚀 How to Use This Repo
For Learning

# Clone the repo
git clone https://github.com/Syeda-Sameera-Unnissa/sql-practice.git

# Setup database
mysql -u root -p < database_schema.sql
mysql -u root -p < sample_data.sql

# Run any practice file
mysql -u root -p < 01_basic_select_queries.sql
For Reference
Each .sql file is organized by topic
Queries have comments explaining what they do
Files are numbered in learning order (01 → 12)
Project folder has its own detailed README
📌 Part of My Bigger Journey
This repo is part of my 22-week tech transition roadmap.

👉 View Full Roadmap

Other Repos in This Journey
Repo	Topic	Status
sql-practice (this repo)	SQL	🟡 In Progress
linux-practice	Linux	⬜ Upcoming
networking-notes	Networking	⬜ Upcoming
aws-learning	AWS Cloud	⬜ Upcoming
troubleshooting-lab	Troubleshooting	⬜ Upcoming
python-learning	Python	⬜ Upcoming
📝 Key Learnings & Notes
SQL Best Practices I Follow
Always use meaningful aliases
Write comments explaining complex queries
Use proper indentation for readability
Test queries with small datasets first
Use JOINs instead of subqueries when possible for performance
Common Mistakes I Made & Fixed
Mistake	Fix	File
(Add as you learn — example below)		
Forgot GROUP BY with aggregate functions	Always GROUP BY non-aggregated columns	04_group_by_queries.sql
Used WHERE instead of HAVING for aggregates	WHERE = before grouping, HAVING = after grouping	04_group_by_queries.sql
Last Updated: [DATE]
