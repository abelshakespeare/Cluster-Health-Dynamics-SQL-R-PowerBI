-- Temporary loading of CSV data into a staging table
CREATE TEMP TABLE IF NOT EXISTS staging (
    Name VARCHAR(255),
    Age INT,
    Gender TEXT,
    BloodType CHAR(3),
    MedicalCondition TEXT,
    DateOfAdmission DATE,
    Doctor VARCHAR(255),
    Hospital VARCHAR(255),
    InsuranceProvider VARCHAR(255),
    BillingAmount DECIMAL(10, 2),
    RoomNumber VARCHAR(10),
    AdmissionType VARCHAR(255),
    DischargeDate DATE,
    Medication TEXT,
    TestResults TEXT,
    LengthOfStay INT,
    AgeGroup VARCHAR(50)
);

-- Example command to load CSV data into the staging table
COPY staging FROM '/Users/abelshakespeare/Documents/GitHub/Cluster-Health-Dynamics-SQL-R-PowerBI/data/processed/transformed_healthcare_dataset.csv' DELIMITER ',' CSV HEADER;

-- Insert data into Doctors table
INSERT INTO Doctors (Name)
SELECT DISTINCT Doctor FROM staging;

-- Insert data into Hospitals table
INSERT INTO Hospitals (Name)
SELECT DISTINCT Hospital FROM staging;

-- Insert data into InsuranceProviders table
INSERT INTO InsuranceProviders (Name)
SELECT DISTINCT InsuranceProvider FROM staging;

-- Inserting into Patients after resolving foreign keys
INSERT INTO Patients (Name, Age, Gender, BloodType, MedicalCondition, InsuranceProviderID)
SELECT DISTINCT s.Name, s.Age, s.Gender, s.BloodType, s.MedicalCondition, ip.ProviderID
FROM staging s
JOIN InsuranceProviders ip ON s.InsuranceProvider = ip.Name;

-- Inserting into Admissions
INSERT INTO Admissions (
    PatientID, DateOfAdmission, DischargeDate, DoctorID, HospitalID, RoomNumber,
    AdmissionType, BillingAmount, Medication, TestResults, LengthOfStay, AgeGroup)
SELECT p.PatientID, s.DateOfAdmission, s.DischargeDate, d.DoctorID, h.HospitalID, s.RoomNumber,
       s.AdmissionType, s.BillingAmount, s.Medication, s.TestResults, s.LengthOfStay, s.AgeGroup
FROM staging s
JOIN Patients p ON s.Name = p.Name
JOIN Doctors d ON s.Doctor = d.Name
JOIN Hospitals h ON s.Hospital = h.Name;

-- Clean up by dropping the staging table
DROP TABLE staging;
