-- Total users and revenue
SELECT COUNT(*) AS total_users FROM user_subscriptions;
SELECT SUM(monthly_revenue) AS total_monthly_revenue FROM user_subscriptions;

-- Revenue & user count by subscription type
SELECT subscription_type, COUNT(*) AS num_users, SUM(monthly_revenue) AS total_revenue, AVG(monthly_revenue) AS avg_revenue_per_user
FROM user_subscriptions
GROUP BY subscription_type
ORDER BY total_revenue DESC;

-- Top 10 countries by revenue
SELECT country, COUNT(*) AS num_users, SUM(monthly_revenue) AS total_revenue
FROM user_subscriptions
GROUP BY country
ORDER BY total_revenue DESC
LIMIT 10;

-- Device usage distribution
SELECT device, COUNT(*) AS user_count
FROM user_subscriptions
GROUP BY device
ORDER BY user_count DESC;

-- Revenue by device
SELECT device, SUM(monthly_revenue) AS total_revenue, AVG(monthly_revenue) AS avg_revenue_per_user
FROM user_subscriptions
GROUP BY device
ORDER BY total_revenue DESC;

-- Age group segmentation
SELECT CASE
    WHEN age BETWEEN 13 AND 17 THEN '13-17'
    WHEN age BETWEEN 18 AND 24 THEN '18-24'
    WHEN age BETWEEN 25 AND 34 THEN '25-34'
    WHEN age BETWEEN 35 AND 44 THEN '35-44'
    WHEN age BETWEEN 45 AND 54 THEN '45-54'
    ELSE '55+'
END AS age_group, COUNT(*) AS num_users, SUM(monthly_revenue) AS total_revenue
FROM user_subscriptions
GROUP BY age_group
ORDER BY age_group;

-- Plan duration analysis
SELECT plan_duration, COUNT(*) AS num_users, SUM(monthly_revenue) AS total_revenue
FROM user_subscriptions
GROUP BY plan_duration
ORDER BY num_users DESC;

-- Monthly join trend
SELECT DATE_FORMAT(join_date, '%Y-%m') AS year_month, COUNT(*) AS new_users, SUM(monthly_revenue) AS total_revenue
FROM user_subscriptions
GROUP BY DATE_FORMAT(join_date, '%Y-%m')
ORDER BY DATE_FORMAT(join_date, '%Y-%m');

-- Gender split by subscription
SELECT subscription_type, gender, COUNT(*) AS num_users
FROM user_subscriptions
GROUP BY subscription_type, gender
ORDER BY subscription_type, num_users DESC;
