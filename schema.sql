-- Prenatal Care Data Analysis & Database System
-- schema.sql

CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    Last_Name VARCHAR(50) NOT NULL,
    Date_of_Birth DATE NOT NULL,
    Gender VARCHAR(20) CHECK (Gender IN ('Male', 'Female', 'Other')),
    Race_Ethnicity VARCHAR(50),
    Income_Level VARCHAR(20) CHECK (Income_Level IN ('Low', 'Middle', 'High')),
    Education_Level VARCHAR(50),
    Insurance_Status VARCHAR(20) CHECK (Insurance_Status IN ('Insured', 'Uninsured')),
    ZIP_Code VARCHAR(10),
    Geographic_Location VARCHAR(10) CHECK (Geographic_Location IN ('Urban', 'Rural'))
);

CREATE TABLE Facility (
    Facility_ID INT PRIMARY KEY CHECK (Facility_ID BETWEEN 10000 AND 99999),
    Facility_Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(50) NOT NULL,
    State CHAR(2) NOT NULL,
    Zip_Code VARCHAR(10),
    Facility_Type VARCHAR(50) CHECK (Facility_Type IN ('Public', 'Private', 'Hospital', 'Clinic')),
    Contact_Number VARCHAR(15)
);

CREATE TABLE Healthcare_Provider (
    Provider_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Specialty VARCHAR(50) CHECK (Specialty IN ('MFM', 'Obstetrics', 'Infertility')),
    Years_Experience INT CHECK (Years_Experience > 0),
    Facility_ID INT,
    Facility_Name VARCHAR(100) NOT NULL,
    Location VARCHAR(255),
    Facility_Type VARCHAR(50) CHECK (Facility_Type IN ('Public', 'Private', 'Hospital', 'Clinic')),
    FOREIGN KEY (Facility_ID) REFERENCES Facility(Facility_ID)
);

CREATE TABLE Prenatal_Care (
    Care_Episode_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT,
    Date_First_Visit DATE NOT NULL,
    Num_Prenatal_Visits INT CHECK (Num_Prenatal_Visits IN (8, 10, 14, 16, 20)),
    Gestational_Age_First INT CHECK (Gestational_Age_First BETWEEN 0 AND 42),
    Healthcare_Provider VARCHAR(100) NOT NULL,
    Provider_Type VARCHAR(50) CHECK (Provider_Type IN ('MFM', 'Obstetrics', 'Infertility', 'Midwife')),
    Facility_Name VARCHAR(100) NOT NULL,
    Facility_Type VARCHAR(50) CHECK (Facility_Type IN ('Public', 'Private', 'Hospital', 'Clinic')),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);

CREATE TABLE Outcomes (
    Outcome_ID INT PRIMARY KEY CHECK (Outcome_ID BETWEEN 100 AND 999),
    Care_Episode_ID INT,
    Birth_Outcome VARCHAR(50) CHECK (Birth_Outcome IN ('Full-term', 'Preterm', 'Low Birth Weight', 'Stillbirth')),
    Complications BOOLEAN,
    Postnatal_Followup BOOLEAN,
    Infant_Health_Status VARCHAR(20) CHECK (Infant_Health_Status IN ('Preterm', 'Full-term')),
    FOREIGN KEY (Care_Episode_ID) REFERENCES Prenatal_Care(Care_Episode_ID)
);

CREATE TABLE Disparity_Indicator (
    Patient_ID INT,
    Access_to_Care INT CHECK (Access_to_Care > 0),
    Language_Barrier BOOLEAN,
    Cultural_Competency BOOLEAN,
    Socioeconomic_Barriers VARCHAR(100) CHECK (Socioeconomic_Barriers IN ('Transportation', 'Childcare', 'Work Leave', 'None')),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);
