-- Patient Remission Analysis Portfolio Project

-- Total Patients
SELECT COUNT(*) AS Total_Patients
FROM patient_remission_analysis_3000;

-- Remission Status Distribution
SELECT
    Remission_Status,
    COUNT(*) AS Patient_Count
FROM patient_remission_analysis_3000
GROUP BY Remission_Status;

-- Patients by Gender
SELECT
    Gender,
    COUNT(*) AS Total_Patients
FROM patient_remission_analysis_3000
GROUP BY Gender;

-- Average Age by Remission Status
SELECT
    Remission_Status,
    ROUND(AVG(Age),2) AS Avg_Age
FROM patient_remission_analysis_3000
GROUP BY Remission_Status;

-- Average Treatment Cost by Treatment Type
SELECT
    Treatment_Type,
    ROUND(AVG(Treatment_Cost),2) AS Avg_Treatment_Cost
FROM patient_remission_analysis_3000
GROUP BY Treatment_Type
ORDER BY Avg_Treatment_Cost DESC;

-- Average Length of Treatment by Treatment Type
SELECT
    Treatment_Type,
    ROUND(AVG(Length_of_Treatment),2) AS Avg_Length
FROM patient_remission_analysis_3000
GROUP BY Treatment_Type
ORDER BY Avg_Length DESC;

-- Follow-Up Visits by Remission Status
SELECT
    Remission_Status,
    ROUND(AVG(Follow_Up_Visits),2) AS Avg_Follow_Up_Visits
FROM patient_remission_analysis_3000
GROUP BY Remission_Status;

-- Patient Distribution by Region
SELECT
    Region,
    COUNT(*) AS Patient_Count
FROM patient_remission_analysis_3000
GROUP BY Region
ORDER BY Patient_Count DESC;

-- Hospital Performance
SELECT
    Hospital,
    Remission_Status,
    COUNT(*) AS Patient_Count
FROM patient_remission_analysis_3000
GROUP BY Hospital, Remission_Status
ORDER BY Hospital;