# Prenatal Care Data Analysis & Database System

## Overview
This project focuses on designing and analyzing a healthcare database to study prenatal care utilization and disparities among patients. The system models patient demographics, healthcare providers, prenatal care visits, facilities, outcomes, and disparity indicators.

The goal is to show how structured healthcare data can be organized, queried, and analyzed to support clinical and administrative decision-making.

## Objectives
- Design a relational database for prenatal care data
- Create structured healthcare tables with primary keys, foreign keys, and validation rules
- Insert sample patient, provider, facility, prenatal care, outcome, and disparity data
- Write SQL queries to analyze prenatal care utilization and health disparities
- Summarize insights related to race/ethnicity, income level, and language barriers

## Database Design
See `ERD.md` for the entity relationship diagram.

The database includes the following tables:

- Patient
- Facility
- Healthcare_Provider
- Prenatal_Care
- Outcomes
- Disparity_Indicator

The design uses relational database concepts to connect patient demographics, care episodes, providers, facilities, birth outcomes, and social/access-related barriers.

## Project Files
- `ERD.md` - Mermaid-based entity relationship diagram
- `schema.sql` - Creates all database tables and constraints
- `data.sql` - Inserts sample patient, provider, facility, prenatal care, outcome, and disparity data
- `queries.sql` - Contains SQL queries used for analysis
- `analysis.md` - Summarizes the key findings from the data analysis

## Key Analysis Areas
### Prenatal Visits by Race/Ethnicity
The project analyzes average prenatal visits across racial and ethnic groups to identify potential differences in care utilization.

### Prenatal Visits by Income Level
The analysis compares prenatal care utilization across income groups to evaluate how socioeconomic status may affect access to care.

### Language Barriers and Care Access
The project reviews how language barriers may influence prenatal visit frequency and patient access to care.

## Technologies Used
- SQL
- Relational Database Design
- Data Modeling
- Healthcare Data Analysis
- Data Reporting

## Future Improvements
- Add a dashboard using Power BI or Tableau
- Expand the dataset for stronger analysis
- Add stored procedures or views for recurring reports
- Include predictive modeling for prenatal risk factors
- Connect the database to an EHR-style front end

## Author
Shaan Khela  
M.S. Health Informatics Candidate  
Grand Canyon University
