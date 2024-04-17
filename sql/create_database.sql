-- Drop tables if they already exist to avoid conflicts during development
DROP TABLE IF EXISTS Patients CASCADE;
DROP TABLE IF EXISTS Admissions CASCADE;
DROP TABLE IF EXISTS Doctors CASCADE;
DROP TABLE IF EXISTS Hospitals CASCADE;
DROP TABLE IF EXISTS InsuranceProviders CASCADE;

-- Create table for Doctors
CREATE TABLE Doctors (
    DoctorID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Specialty VARCHAR(255)
);

-- Create table for Hospitals
CREATE TABLE Hospitals (
    HospitalID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Location VARCHAR(255)
);

-- Create table for Insurance Providers
CREATE TABLE InsuranceProviders (
    ProviderID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Create table for Patients
CREATE TABLE Patients (
    PatientID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Age INT,
    Gender CHAR(255),
    BloodType CHAR(3),
    MedicalCondition TEXT,
    InsuranceProviderID INT,
    FOREIGN KEY (InsuranceProviderID) REFERENCES InsuranceProviders(ProviderID)
);

-- Create table for Admissions
CREATE TABLE Admissions (
    AdmissionID SERIAL PRIMARY KEY,
    PatientID INT NOT NULL,
    DateOfAdmission DATE,
    DischargeDate DATE,
    DoctorID INT,
    HospitalID INT,
    RoomNumber VARCHAR(10),
    AdmissionType VARCHAR(255),
    BillingAmount DECIMAL(10, 2),
    Medication TEXT,
    TestResults TEXT,
    LengthOfStay INT,
    AgeGroup VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID)
);


-- Comments indicating usage
COMMENT ON COLUMN Patients.Gender IS 'M for Male, F for Female, O for Other';
COMMENT ON COLUMN Patients.BloodType IS 'Blood type of the patient: A, B, AB, O, etc.';
COMMENT ON COLUMN Admissions.LengthOfStay IS 'Automatically calculated as the number of days between admission and discharge';
