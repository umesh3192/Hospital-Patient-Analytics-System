# 🏥 Hospital Patient Analytics System
End-to-End Data Analytics Project using SQL, Python, and Power BI.

## 📌 Project Overview

The Hospital Patient Analytics System is an end-to-end Data Analytics project developed using SQL, Python, and Power BI.

The project focuses on analyzing hospital operational data, monitoring patient information, appointments, treatment costs, revenue, payment methods, and doctor performance through an interactive Power BI dashboard.

The goal is to convert raw healthcare data into meaningful business insights that support better decision-making.

## 📊 Dashboard Preview

![Hospital Dashboard](Images/HospitalDashboard.png)

## 🎯 Project Objectives

This project was developed to:

- Analyze patient records and hospital operations.
- Monitor appointment status and treatment performance.
- Track hospital revenue and payment methods.
- Compare average treatment costs across treatment types.
- Build an interactive Power BI dashboard for decision-making.
- Demonstrate end-to-end Data Analytics skills using SQL, Python, and Power BI.

## 🛠️ Tech Stack

| Category | Technologies |
|----------|--------------|
| Database | PostgreSQL |
| Programming Language | Python |
| Data Processing | Pandas, NumPy |
| Data Visualization | Power BI |
| Data Source | CSV (.csv) |
| IDE / Tools | VS Code, Jupyter Notebook, Power BI Desktop, pgAdmin 4 |
| Version Control | Git & GitHub |

## 📂 Dataset Information

The Hospital Patient Analytics System uses a relational healthcare dataset stored in PostgreSQL. The dataset contains information about patients, doctors, appointments, treatments, and billing records. The data was processed using Python and visualized using Power BI.

### Database Tables

| Table | Description |
|--------|-------------|
| Patients | Stores patient personal and contact information. |
| Doctors | Contains doctor details, specialization, and experience. |
| Appointments | Maintains appointment date, time, status, and reason for visit. |
| Treatments | Stores treatment type, treatment date, description, and cost. |
| Billing | Contains billing amount, payment method, and payment status. |

**Database:** PostgreSQL

**Data Processing:** Python (Pandas & NumPy)

**Visualization:** Power BI

**File Format:** CSV (.csv)

## 🗄️ Database Schema

The project follows a relational database design in PostgreSQL. The schema consists of five interconnected tables that manage patient, doctor, appointment, treatment, and billing information.

### Data Model

![Database Schema](Images/database-schema.png)

## 💻 SQL Implementation

PostgreSQL was used to design and manage the relational database for the Hospital Patient Analytics System. SQL was used to create tables, establish relationships, retrieve data, and generate analytical insights for reporting.

### SQL Operations Performed

- Created relational database tables using PostgreSQL.
- Defined Primary Key and Foreign Key relationships.
- Retrieved records using `SELECT` statements.
- Performed `INNER JOIN` operations across multiple tables.
- Used Aggregate Functions (`COUNT`, `SUM`, `AVG`) for KPI calculations.
- Applied `GROUP BY` for data summarization.
- Sorted results using `ORDER BY`.
- Filtered records using `WHERE` conditions.
- Used `DISTINCT` to identify unique values.
- Applied column aliases using `AS` for better readability.

## 🐍 Python Implementation

Python was used to clean, process, and analyze the hospital dataset before building the Power BI dashboard.

### Python Tasks Performed

- Imported multiple CSV datasets using Pandas.
- Loaded Patients, Doctors, Appointments, Treatments, and Billing data.
- Inspected the datasets using `head()`, `tail()`, and `info()`.
- Checked for missing values and removed duplicate records.
- Merged multiple datasets using Pandas `merge()`.
- Performed data analysis using Pandas.
- Calculated key metrics such as total patients, total revenue, average treatment cost, and appointment status.
- Created exploratory visualizations using Matplotlib.
- Exported the cleaned dataset for further analysis.

## 📊 Power BI Dashboard Features

Power BI was used to build an interactive dashboard that provides insights into hospital operations, patient management, and financial performance.

### Key Performance Indicators (KPIs)

- Total Patients
- Total Doctors
- Total Appointments
- Total Revenue
- Average Treatment Cost

### Dashboard Visualizations

- Revenue Analysis
- Appointment Analysis
- Treatment Type Distribution
- Patient Gender Distribution
- Doctor Specialization Analysis
- Monthly Appointment Trends

### Interactive Features

- Slicers for Doctor, Treatment Type, and Gender
- Cross-filtering across all visuals
- Interactive KPI cards
- Dynamic charts for business insights

## 📈 Business Insights

The dashboard provides valuable insights into hospital operations and patient management, including:

- Identified the total number of patients, doctors, appointments, and overall revenue.
- Analyzed appointment trends to monitor hospital workload.
- Compared treatment costs across different treatment types.
- Evaluated revenue generated through different payment methods.
- Analyzed patient distribution based on gender.
- Compared doctor performance based on appointments handled.
- Enabled interactive filtering for faster and more effective decision-making.

## 📁 Project Structure

```text
Hospital-Patient-Analytics-System
│
├── Dataset
│   └── Hospital_Data.csv
│
├── PostgreSQL
│   └── Hospital Patient SQL Queries.sql
│
├── Python
│   └── Hospital Project.ipynb
│
├── Power BI
│   └── HOSPITAL PROJECT.pbix
│
├── Images
│   ├── dashboard.png
│   └── database-schema.png
│
├── README.md
└── LICENSE


## 🚀 Future Enhancements

The following enhancements can further improve the project:

- Integrate a live PostgreSQL database for real-time data updates.
- Automate data refresh using Power BI scheduled refresh.
- Build predictive models for patient admission and treatment cost forecasting.
- Develop interactive drill-through reports for detailed analysis.
- Add role-based dashboards for hospital administrators, doctors, and management.
- Implement automated alerts for critical hospital KPIs.
