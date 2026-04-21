BrightTV: Viewership Analytics & Growth Strategy

1. Project Overview:

The CEO of BrightTV (a fictional streaming/broadcast provider) set an objective to aggressively grow the subscriber base for the current financial year. This project involves analyzing user profiles and viewership transactions to provide data-driven insights for the Customer Value Management (CVM) team.

The goal is to understand who is watching, when they are watching, and what factors drive consumption to improve retention and acquisition strategies.

2. Data Analytics Skills Demonstrated:

Data Transformation: Converting UTC timestamps to SAST (Africa/Johannesburg) for localized behavioral analysis.

Feature Engineering: Creating time buckets (Prime Time, Morning), age categorization, and weekday/weekend classifications using SQL CASE statements.

Data Cleaning: Handling null values and "None" entries using COALESCE and NULLIF for high-integrity reporting.

Relational Mapping: Joining large viewership transaction tables (10,000+ rows) with user profiles to link demographics to behavior.

Business Intelligence: Translating raw SQL outputs into insights regarding Prime Time consumption and demographic-specific content recommendations.

3. Dataset & Architecture

The analysis was performed on two primary tables:

bright_tv_user_profiles: Demographic data (Gender, Race, Age, Province) for 5,375 users.

bright_tv_viewership: 10,000 transaction records capturing sessions, duration, and channel IDs.

4. Business Insights 

4.1 User & Usage Trends

The Afternoon Paradox: While Prime Time has the most individual views, the Afternoon drives the highest total engagement (36% of all viewing minutes). Afternoon viewers are "stickier" and watch for longer durations.

The Monday Slump: Monday is the weakest day for engagement, contributing only 8% of weekly watch time—a 137% drop from Saturday peaks.

Geographic Concentration: 65% of traffic is centralized in Gauteng, Western Cape, and KZN. Gauteng alone accounts for 36.5% of the total 
market.

4.2 Content & Demographic Drivers

Sports as the Anchor: Live sports (Cricket World Cup and SuperSport) command 48% of total platform watch time, acting as the primary retention engine.

Young Adult Core: 57% of users are aged 20-35, while the audience is heavily skewed toward males (87%).

Snackable vs. Long-form: Music channels (Channel O/Trace TV) drive high volume/frequency, but significantly lower watch time compared to sports.

5. Strategic Recommendations

Boost Weekday Engagement: Launch "Monday Night Premieres" or CVM loyalty rewards to flatten the weekly consumption curve and reduce the Monday slump.

Monetize Afternoon Viewing: Shift premium ad inventory to the 12:00–16:00 window to capitalize on the highest duration-per-view metrics.

Close the Gender Gap: Diversify the content library with female-centric lifestyle and drama programming to unlock the remaining 90% of the potential female market.

Regional Expansion: Deploy localized acquisition campaigns in high-growth secondary provinces like Mpumalanga and Limpopo to reduce reliance on the Gauteng hub.

Secure the Core: Optimize server infrastructure for Friday/Saturday evening surges to eliminate "Break in Transmission" events during peak traffic.

