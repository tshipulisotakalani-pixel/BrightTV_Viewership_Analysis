BrightTV: Viewership Analytics & Growth Strategy

📌 Project Overview:

The CEO of BrightTV (a fictional streaming/broadcast provider) set an objective to aggressively grow the subscriber base for the current financial year. This project involves analyzing user profiles and viewership transactions to provide data-driven insights for the Customer Value Management (CVM) team.

The goal is to understand who is watching, when they are watching, and what factors drive consumption to improve retention and acquisition strategies.

🛠️ Data Analytics Skills Demonstrated:

Data Transformation: Converting UTC timestamps to SAST (Africa/Johannesburg) for localized behavioral analysis.

Feature Engineering: Creating time buckets (Prime Time, Morning), age categorization, and weekday/weekend classifications using SQL CASE statements.

Data Cleaning: Handling null values and "None" entries using COALESCE and NULLIF for high-integrity reporting.

Relational Mapping: Joining large viewership transaction tables (10,000+ rows) with user profiles to link demographics to behavior.

Business Intelligence: Translating raw SQL outputs into insights regarding Prime Time consumption and demographic-specific content recommendations.

📂 Dataset & Architecture

The analysis was performed on two primary tables:

bright_tv_user_profiles: Demographic data (Gender, Race, Age, Province) for 5,375 users.

bright_tv_viewership: 10,000 transaction records capturing sessions, duration, and channel IDs.

💡 Business Insights & Recommendations

1. User & Usage Trends:

Prime Time Dominance: Preliminary data suggests a heavy concentration of viewership between 17:00 and 21:00 (SAST).

Demographic Split: Analysis covers 9 South African provinces, allowing for hyper-local content targeting.
