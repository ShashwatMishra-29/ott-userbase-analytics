CREATE DATABASE IF NOT EXISTS ott_analytics;
USE ott_analytics;

CREATE TABLE IF NOT EXISTS user_subscriptions (
    user_id INT PRIMARY KEY,
    subscription_type VARCHAR(20),
    monthly_revenue DECIMAL(10,2),
    join_date DATE,
    last_payment_date DATE,
    country VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    device VARCHAR(30),
    plan_duration VARCHAR(20)
);
