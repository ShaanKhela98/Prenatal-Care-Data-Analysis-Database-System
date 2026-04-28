-- Prenatal Care Data Analysis & Database System
-- data.sql

INSERT INTO Patient (Patient_ID, Last_Name, Date_of_Birth, Gender, Race_Ethnicity, Income_Level, Education_Level, Insurance_Status, ZIP_Code, Geographic_Location)
VALUES 
(1, 'Smith', '1990-06-15', 'Male', 'White', 'Middle', 'Bachelor', 'Insured', '98001', 'Urban'),
(2, 'Johnson', '1985-09-22', 'Female', 'Black', 'Low', 'High School', 'Uninsured', '60614', 'Urban'),
(3, 'Lee', '1995-12-05', 'Other', 'Asian', 'High', 'Master', 'Insured', '75001', 'Rural'),
(4, 'Garcia', '1988-04-30', 'Female', 'Hispanic', 'Middle', 'Associate', 'Insured', '85001', 'Urban'),
(5, 'Martinez', '1992-08-21', 'Male', 'Hispanic', 'Low', 'High School', 'Uninsured', '90001', 'Urban'),
(6, 'Nguyen', '2000-01-10', 'Female', 'Asian', 'High', 'PhD', 'Insured', '77001', 'Rural'),
(7, 'Patel', '1993-07-19', 'Male', 'Indian', 'Middle', 'Master', 'Insured', '10001', 'Urban');

INSERT INTO Facility (Facility_ID, Facility_Name, Address, City, State, Zip_Code, Facility_Type, Contact_Number)
VALUES 
(10001, 'Urban Maternity Hospital', '123 Main St', 'Seattle', 'WA', '98101', 'Hospital', '(206) 123-4567'),
(10002, 'Community Health Clinic', '456 Elm St', 'Chicago', 'IL', '60614', 'Clinic', '(312) 987-6543'),
(10003, 'Rural Birth Center', '789 Oak St', 'Austin', 'TX', '73301', 'Public', '(512) 555-1234'),
(10004, 'State Health Hospital', '321 Pine St', 'Phoenix', 'AZ', '85001', 'Hospital', '(602) 111-2222'),
(10005, 'Family Care Clinic', '654 Maple Ave', 'Los Angeles', 'CA', '90001', 'Clinic', '(213) 222-3333'),
(10006, 'Regional Birth Center', '987 Cedar Rd', 'Houston', 'TX', '77001', 'Public', '(713) 333-4444'),
(10007, 'Metropolitan Women’s Health', '741 Birch Blvd', 'New York', 'NY', '10001', 'Private', '(212) 444-5555');

INSERT INTO Healthcare_Provider (Name, Specialty, Years_Experience, Facility_ID, Facility_Name, Location, Facility_Type)
VALUES 
('Dr. Alice Brown', 'Obstetrics', 10, 10001, 'Urban Maternity Hospital', '123 Main St, Seattle, WA, 98101', 'Hospital'),
('Dr. Robert Green', 'MFM', 15, 10002, 'Community Health Clinic', '456 Elm St, Chicago, IL, 60614', 'Clinic'),
('Dr. Emily Davis', 'Infertility', 8, 10003, 'Rural Birth Center', '789 Oak St, Austin, TX, 73301', 'Public'),
('Dr. Michael Carter', 'Obstetrics', 20, 10004, 'State Health Hospital', '321 Pine St, Phoenix, AZ, 85001', 'Hospital'),
('Dr. Sofia Lopez', 'MFM', 12, 10005, 'Family Care Clinic', '654 Maple Ave, Los Angeles, CA, 90001', 'Clinic'),
('Dr. James White', 'Infertility', 7, 10006, 'Regional Birth Center', '987 Cedar Rd, Houston, TX, 77001', 'Public'),
('Dr. Priya Sharma', 'Obstetrics', 18, 10007, 'Metropolitan Women’s Health', '741 Birch Blvd, New York, NY, 10001', 'Private');

INSERT INTO Prenatal_Care (Patient_ID, Date_First_Visit, Num_Prenatal_Visits, Gestational_Age_First, Healthcare_Provider, Provider_Type, Facility_Name, Facility_Type)
VALUES 
(1, '2024-01-10', 14, 10, 'Dr. Alice Brown', 'Obstetrics', 'Urban Maternity Hospital', 'Hospital'),
(2, '2023-12-05', 10, 8, 'Dr. Robert Green', 'MFM', 'Community Health Clinic', 'Clinic'),
(3, '2024-02-15', 16, 12, 'Dr. Emily Davis', 'Infertility', 'Rural Birth Center', 'Public'),
(4, '2023-11-25', 20, 6, 'Dr. Michael Carter', 'Obstetrics', 'State Health Hospital', 'Hospital'),
(5, '2024-03-05', 14, 9, 'Dr. Sofia Lopez', 'MFM', 'Family Care Clinic', 'Clinic'),
(6, '2023-10-30', 8, 5, 'Dr. James White', 'Infertility', 'Regional Birth Center', 'Public'),
(7, '2024-01-20', 16, 7, 'Dr. Priya Sharma', 'Obstetrics', 'Metropolitan Women’s Health', 'Private');

INSERT INTO Outcomes (Outcome_ID, Care_Episode_ID, Birth_Outcome, Complications, Postnatal_Followup, Infant_Health_Status)
VALUES 
(101, 1, 'Full-term', FALSE, TRUE, 'Full-term'),
(102, 2, 'Preterm', TRUE, TRUE, 'Preterm'),
(103, 3, 'Low Birth Weight', TRUE, FALSE, 'Preterm'),
(104, 4, 'Stillbirth', TRUE, FALSE, 'Preterm'),
(105, 5, 'Full-term', FALSE, TRUE, 'Full-term'),
(106, 6, 'Preterm', TRUE, TRUE, 'Preterm'),
(107, 7, 'Low Birth Weight', TRUE, FALSE, 'Preterm');

INSERT INTO Disparity_Indicator (Patient_ID, Access_to_Care, Language_Barrier, Cultural_Competency, Socioeconomic_Barriers)
VALUES 
(1, 5, FALSE, TRUE, 'None'),
(2, 15, TRUE, FALSE, 'Transportation'),
(3, 10, FALSE, TRUE, 'Childcare'),
(4, 20, TRUE, TRUE, 'Work Leave'),
(5, 12, FALSE, FALSE, 'None'),
(6, 8, FALSE, TRUE, 'Transportation'),
(7, 18, TRUE, FALSE, 'Childcare');
