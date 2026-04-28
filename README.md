# Prenatal Care Data Analysis & Database System

## Overview

This project focuses on designing and analyzing a healthcare database to study prenatal care utilization and disparities among patients. The system models patient demographics, healthcare providers, prenatal care visits, and outcomes, and uses SQL-based analysis to generate insights that can support clinical and administrative decision-making.

## Objective

The goal of this project is to:

* Design a structured relational database for prenatal care data
* Ensure data integrity through constraints and relationships
* Analyze healthcare disparities using SQL queries
* Generate insights related to access to care, socioeconomic factors, and patient outcomes

---

## Database Design

### Entity Relationship Model

The database is built using an Entity Relationship Diagram (ERD) that defines relationships between key healthcare entities, including:

* Patient
* Prenatal Care
* Healthcare Provider
* Facility
* Outcomes
* Disparity Indicators

The design ensures proper normalization and clear relationships using primary and foreign keys.

---

### Data Dictionary

Each table includes well-defined fields with:

* Data types
* Field sizes
* Constraints (NOT NULL, CHECK, etc.)
* Standardized values (e.g., gender, income level, facility type)

This ensures consistency, accuracy, and usability of healthcare data.

---

## Database Implementation

### Table Creation

SQL was used to create structured tables with:

* Primary and foreign key relationships
* Validation rules using CHECK constraints
* Controlled data formats for fields such as gender, income level, and facility type

### Data Insertion

Sample datasets were inserted across all tables, including:

* 7 patients with demographic and socioeconomic data
* Multiple healthcare providers and facilities
* Prenatal care visits and outcomes
* Disparity indicators such as language barriers and access to care

---

## Data Analysis

### SQL Queries

Custom queries were developed to analyze:

* Average number of prenatal visits by race/ethnicity
* Relationship between income level and birth outcomes
* Impact of language barriers on patient access to care

These queries support data-driven insights into healthcare disparities and utilization trends.

---

## Key Findings

### Racial and Ethnic Disparities

Analysis showed variation in prenatal visit frequency across racial and ethnic groups, indicating potential differences in access to or utilization of care.

### Socioeconomic Impact

Patients in lower income groups had fewer prenatal visits compared to middle-income groups, highlighting the influence of financial and insurance-related barriers.

### Language Barriers

Patients with language barriers tended to have reduced prenatal care utilization, suggesting the need for improved communication support in healthcare settings.

---

## Technologies Used

* SQL (MySQL-style syntax)
* Relational Database Design
* Data Modeling (ERD)
* Data Analysis and Reporting

---

## Future Improvements

* Integrate with a front-end dashboard (Power BI or Tableau)
* Expand dataset size for more robust analysis
* Add predictive modeling for risk assessment
* Implement real-time data validation and ingestion
* Connect with Electronic Health Record (EHR) systems

---

## Author

Shaan Khela

---
