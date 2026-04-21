# BrightTV: Viewership Analytics & Growth Strategy 📺

[![Dashboard](https://img.shields.io/badge/View-Interactive%20Dashboard-EE4C2C?style=for-the-badge&logo=databricks&logoColor=white)](https://learn-gleam-view.lovable.app/)
[![SQL](https://img.shields.io/badge/Language-SQL-00758F?style=for-the-badge&logo=postgresql&logoColor=white)](https://github.com/your-username/your-repo-name)

## 1. Project Overview
The CEO of **BrightTV** (a fictional streaming/broadcast provider) set an aggressive objective to grow the subscriber base for the current financial year. This project involves analyzing user profiles and viewership transactions to provide data-driven insights for the **Customer Value Management (CVM)** team.

**Objective:** Understand audience demographics, peak consumption periods, and content drivers to improve retention and acquisition strategies.

---

## 2. Data Engineering & Analytics Workflow
To move from raw data to business intelligence, the following technical transformations were performed:

* **Temporal Normalization:** Converted UTC timestamps to **SAST (Africa/Johannesburg)** for localized behavioral analysis.
* **Feature Engineering:** Created time buckets (Prime Time, Morning), age categorization, and weekday/weekend classifications using complex `SQL CASE` statements.
* **Data Cleaning:** Handled null values and "None" entries using `COALESCE` and `NULLIF` for high-integrity reporting.
* **Relational Mapping:** Joined viewership transaction tables (**10,000+ rows**) with user profiles (**5,375 users**) to link demographics to behavior.

---

## 3. Key Business Insights 📊

### 3.1 User & Usage Trends
* **The Afternoon Paradox:** While Prime Time has the most individual views, the **Afternoon** drives the highest total engagement (**36% of all viewing minutes**). Afternoon viewers are "stickier" and watch for longer durations.
* **The Monday Slump:** Monday is the weakest day for engagement, contributing only 8% of weekly watch time—a **137% drop** from Saturday peaks.
* **Geographic Concentration:** 65% of traffic is centralized in Gauteng, Western Cape, and KZN. **Gauteng alone** accounts for 36.5% of the total market.

### 3.2 Content & Demographic Drivers
* **Sports as the Anchor:** Live sports (Cricket World Cup and SuperSport) command **48% of total platform watch time**, acting as the primary retention engine.
* **Young Adult Core:** 57% of users are aged 20-35, while the audience is currently heavily skewed toward males (87%).
* **Snackable vs. Long-form:** Music channels (Channel O/Trace TV) drive high volume/frequency, but significantly lower watch time compared to sports.

---

## 4. Strategic Growth Roadmap

| Strategy | Recommendation | Expected Impact |
| :--- | :--- | :--- |
| **Engagement** | Launch **"Monday Night Premieres"** or CVM loyalty rewards. | Flatten the weekly consumption curve and reduce the Monday slump. |
| **Monetization** | Shift premium ad inventory to the **12:00–16:00 window**. | Capitalize on the highest duration-per-view metrics. |
| **Acquisition** | Diversify content with **female-centric lifestyle** and drama. | Unlock the remaining 90% of the potential female market. |
| **Expansion** | Deploy localized campaigns in **Mpumalanga and Limpopo**. | Reduce over-reliance on the Gauteng market hub. |
| **Retention** | Optimize server infrastructure for **Friday/Saturday surges**. | Eliminate "Break in Transmission" events during peak traffic. |

---

## 5. Interactive Dashboard
Explore the full dataset and drill down into the metrics via the interactive dashboard:
👉 **[View BrightTV Analytics Hub](https://learn-gleam-view.lovable.app/)**

---
*This project serves as a demonstration of SQL-based data transformation, relational database management, and business intelligence reporting.*

