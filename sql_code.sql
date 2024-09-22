-- 1. Calculate the average steps and calories burned by users
SELECT 
    AVG(TotalSteps) AS avg_steps, 
    AVG(Calories) AS avg_calories
FROM 
    dailyactivity_merged;

-- 2. Segment users based on their average daily steps
SELECT DISTINCT 
    Id, 
    AVG(TotalSteps) AS avg_daily_steps,
    CASE
        WHEN AVG(TotalSteps) > 10000 THEN 'Highly Active'
        WHEN AVG(TotalSteps) BETWEEN 5000 AND 10000 THEN 'Moderately Active'
        ELSE 'Low Activity'
    END AS activity_level
FROM 
    dailyactivity_merged
GROUP BY 
    Id 
ORDER BY 
    activity_level;

-- 3. Find the average heart rate 
SELECT 
    AVG(Value) AS avg_heart_rate
FROM 
    heartrate_seconds_merged;

-- 4. Correlate heart rate with activity levels (steps)
SELECT 
    hr.Id, 
    AVG(hr.Value) AS avg_heart_rate, 
    AVG(da.TotalSteps) AS avg_steps
FROM 
    heartrate_seconds_merged hr
JOIN 
    dailyactivity_merged da ON hr.Id = da.Id
GROUP BY 
    hr.Id;

-- 5. Find the average sleep duration
SELECT 
    AVG(TotalMinutesAsleep) AS avg_sleep_duration
FROM 
    sleepday_merged;

-- 6. Analyze the correlation between sleep and activity
SELECT 
    da.Id, 
    AVG(s.TotalMinutesAsleep) AS avg_sleep_duration, 
    AVG(da.TotalSteps) AS avg_steps
FROM 
    sleepday_merged s
JOIN 
    dailyactivity_merged da ON s.Id = da.Id
GROUP BY 
    da.Id;

-- 7. Analyze the relationship between sleep duration and heart rate
SELECT 
    s.Id, 
    AVG(s.TotalMinutesAsleep) AS avg_sleep_duration, 
    AVG(hr.Value) AS avg_heart_rate
FROM 
    sleepday_merged s
JOIN 
    heartrate_seconds_merged hr ON s.Id = hr.Id
GROUP BY 
    s.Id;

-- 8. Find the average weight 
SELECT 
    AVG(WeightKg) AS avg_weight,
	AVG(BMI) AS avg_bmi
FROM 
    weightloginfo_merged;

-- 9. Correlate weight with activity (steps)
SELECT 
    wl.Id, 
    AVG(wl.WeightKg) AS avg_weight, 
    AVG(da.TotalSteps) AS avg_steps
FROM 
    weightloginfo_merged wl
JOIN 
    dailyactivity_merged da ON wl.Id = da.Id
GROUP BY 
    wl.Id;

