--Data Explorator,check both tables
SELECT * FROM workspace.default.bright_tv_user_profiles;

SELECT * FROM workspace.default.bright_tv_viewership;


--Date Range
SELECT MIN(RecordDate2),
       MAX(RecordDate2)     
FROM workspace.default.bright_tv_viewership;


--Number of records or views
SELECT COUNT(`Duration 2`)AS Number_of_Views
FROM workspace.default.bright_tv_viewership;


 --COUNT number of rows,5375 rows(user profile table),and 10000 rows on viewership table
 SELECT COUNT(*) FROM workspace.default.bright_tv_user_profiles;

 SELECT COUNT(*) FROM workspace.default.bright_tv_viewership;


 --COUNT DISTINCT Channels=21 
 SELECT DISTINCT(Channel2)
 FROM workspace.default.bright_tv_viewership;


 --Number of Subscribers/Base=1000
 SELECT DISTINCT(UserID0)
 FROM workspace.default.bright_tv_viewership;


--Check different Race groups
SELECT DISTINCT(race)
FROM workspace.default.bright_tv_user_profiles;


--Check different Provinces...9 provinces and None
SELECT DISTINCT(province)
FROM workspace.default.bright_tv_user_profiles;


--Check Gender Groups/Categories
SELECT DISTINCT(gender)
FROM workspace.default.bright_tv_user_profiles;


--Flag Age category using CASE statement-min age 0 and max is 144
SELECT Age,
CASE
    WHEN Age = 0 THEN 'infant(0)' 
    WHEN Age BETWEEN 1 AND 12 THEN 'Kids(0-12)'
    WHEN Age BETWEEN 13 AND 20 THEN 'Teenagers(13-20)'
    WHEN Age BETWEEN 21 AND 44 THEN 'Young Adult(21-44)'
    WHEN Age BETWEEN 45 AND 64 THEN 'Mature Adults(45-64)'
    ELSE 'Senior (65+)'
    END AS Age_category
    FROM workspace.default.bright_tv_user_profiles;


--dealing with NULLS--No Null in all 
SELECT DISTINCT(Gender)
FROM workspace.default.bright_tv_user_profiles;


--COALESCE Function
SELECT
COALESCE(NULLIF(gender,'None'),'Unknown') AS cleaned_gender,
COALESCE(NULLIF(Race,'None'),'Unknown') AS cleaned_Race,
COALESCE(NULLIF(province,'None'),'Unknown') AS cleaned_province
FROM workspace.default.bright_tv_user_profiles;


--Data Range 2026 january to 2026 March(3 months)
SELECT MIN(RecordDate2),
       MAX(RecordDate2) 
FROM workspace.default.bright_tv_viewership;



--Final BrightTV Query

SELECT
--Converting utc time zone to SA/African time
from_utc_timestamp(RecordDate2,'Africa/Johannesburg') AS sast_timestamp,
--Using DATE functions to extract record day and time
to_date(from_utc_timestamp(RecordDate2,'Africa/Johannesburg')) AS record_day,
date_format(from_utc_timestamp(RecordDate2,'Africa/Johannesburg'),'HH:mm:ss') AS record_time,
--Extract duration in minutes using timestamp functions
`Duration 2`,
ROUND(HOUR(`Duration 2`) * 60 + MINUTE(`Duration 2`) + SECOND(`Duration 2`) / 60.0,2) AS Duration_minutes,
--Added date columns for weekly,daily and monthly view trend analysis
DAYNAME(record_day) AS day_name,
MONTHNAME(record_day) AS month_name,
YEAR(record_day) AS Year_,
DAY(record_day) AS day_of_month_,
v.channel2,
p.age,
--Data Cleaning,removing None replacing with Unknown
COALESCE(NULLIF(NULLIF(TRIM(gender),'None'),''),'Unknown')AS cleaned_gender,
COALESCE(NULLIF(NULLIF(TRIM(Race),'None'),''),'Unknown') AS cleaned_Race,
COALESCE(NULLIF(NULLIF(TRIM(province),'None'),''),'Unknown') AS cleaned_province,
--CASE statement to categories Age groups
CASE 
    WHEN Age = 0 THEN 'infant(0)' 
    WHEN Age BETWEEN 1 AND 12 THEN 'Kids(1-12)'
    WHEN Age BETWEEN 13 AND 19 THEN 'Teenagers(13-19)'
    WHEN Age BETWEEN 20 AND 35 THEN 'Young Adult(20-35)'
    WHEN Age BETWEEN 36 AND 64 THEN 'Mature Adults(36-64)'
    ELSE 'Senior (65+)'
    END AS Age_category,
--CASE statement to classify days
    CASE
    WHEN DAYNAME(record_day) IN ('Sat','Sun') THEN 'Weekend'
    ELSE 'Weekday'
    END AS day_classification,
--CASE statement-Time buckets
CASE
    WHEN HOUR(from_utc_timestamp(RecordDate2, 'Africa/Johannesburg')) BETWEEN 6 AND 11 THEN 'Morning'
    WHEN HOUR(from_utc_timestamp(RecordDate2, 'Africa/Johannesburg')) BETWEEN 12 AND 16 THEN 'Afternoon'
    WHEN HOUR(from_utc_timestamp(RecordDate2, 'Africa/Johannesburg')) BETWEEN 17 AND 21 THEN 'Evening (Prime)'
    ELSE 'Night/Early Morning' 
    END AS time_bucket
FROM workspace.default.bright_tv_viewership AS v
LEFT JOIN workspace.default.bright_tv_user_profiles AS p
ON v.UserID0 = p.UserID
