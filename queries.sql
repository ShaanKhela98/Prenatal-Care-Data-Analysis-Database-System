-- Prenatal Care Data Analysis & Database System
-- queries.sql

-- 1. Average number of prenatal visits by race/ethnicity
SELECT 
    p.Race_Ethnicity, 
    AVG(pc.Num_Prenatal_Visits) AS Avg_Prenatal_Visits
FROM Patient p
JOIN Prenatal_Care pc ON p.Patient_ID = pc.Patient_ID
GROUP BY p.Race_Ethnicity
ORDER BY Avg_Prenatal_Visits DESC;

-- 2. Birth outcomes by income level
SELECT 
    p.Income_Level, 
    o.Birth_Outcome, 
    COUNT(o.Outcome_ID) AS Outcome_Count
FROM Patient p
JOIN Prenatal_Care pc ON p.Patient_ID = pc.Patient_ID
JOIN Outcomes o ON pc.Care_Episode_ID = o.Care_Episode_ID
GROUP BY p.Income_Level, o.Birth_Outcome
ORDER BY p.Income_Level, Outcome_Count DESC;

-- 3. Patients with language barriers
SELECT 
    Patient_ID, 
    Language_Barrier
FROM Disparity_Indicator
WHERE Language_Barrier = TRUE;

-- 4. Average prenatal visits by income level
SELECT
    p.Income_Level,
    AVG(pc.Num_Prenatal_Visits) AS Avg_Prenatal_Visits
FROM Patient p
JOIN Prenatal_Care pc ON p.Patient_ID = pc.Patient_ID
GROUP BY p.Income_Level
ORDER BY Avg_Prenatal_Visits DESC;

-- 5. Average prenatal visits by language barrier status
SELECT
    di.Language_Barrier,
    AVG(pc.Num_Prenatal_Visits) AS Avg_Prenatal_Visits
FROM Disparity_Indicator di
JOIN Prenatal_Care pc ON di.Patient_ID = pc.Patient_ID
GROUP BY di.Language_Barrier;
