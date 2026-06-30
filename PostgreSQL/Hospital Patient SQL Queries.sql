CREATE TABLE patients (
patient_id VARCHAR(10) PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender VARCHAR(10),
date_of_birth DATE,
contact_number VARCHAR(20),
address VARCHAR(200),
registration_date DATE,
insurance_provider VARCHAR(100),
insurance_number VARCHAR(50),
email VARCHAR(100)
);

SELECT * FROM patients;



CREATE TABLE doctors (
doctor_id VARCHAR(10) PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
specialization VARCHAR(50),
phone_number VARCHAR(15),
years_experience INT,
hospital_branch VARCHAR(50),
email VARCHAR(100)
);

SELECT * FROM doctors;



CREATE TABLE appointments (
appointment_id VARCHAR(10) PRIMARY KEY,
patient_id VARCHAR(10),
doctor_id VARCHAR(10),
appointment_date DATE,
appointment_time TIME,
reason_for_visit VARCHAR(50),
status VARCHAR(20),

FOREIGN KEY (patient_id)
REFERENCES patients(patient_id),

FOREIGN KEY (doctor_id)
REFERENCES doctors(doctor_id)
);

SELECT * FROM appointments;



CREATE TABLE treatments (
treatment_id VARCHAR(10) PRIMARY KEY,
appointment_id VARCHAR(10),
treatment_type VARCHAR(50),
description VARCHAR(100),
cost NUMERIC(10,2),
treatment_date DATE,

FOREIGN KEY (appointment_id)
REFERENCES appointments(appointment_id)
);

SELECT * FROM treatments;



CREATE TABLE bills (
bill_id VARCHAR(10) PRIMARY KEY,
patient_id VARCHAR(10),
treatment_id VARCHAR(10),
bill_date DATE,
amount NUMERIC(10,2),
payment_method VARCHAR(20),
payment_status VARCHAR(20),

FOREIGN KEY (patient_id)
REFERENCES patients(patient_id),

FOREIGN KEY (treatment_id)
REFERENCES treatments(treatment_id)
);

SELECT * FROM bills;


1) Total Patients

SELECT COUNT(*) AS total_patients
FROM patients;


2) Total Doctors

SELECT COUNT(*) AS total_doctors
FROM doctors;


3) Total Bills

SELECT COUNT(*) AS total_bills
FROM bills;


4) Different Treatment Types

SELECT DISTINCT treatment_type
FROM treatments;


5) Different Appointment Status

SELECT DISTINCT status
FROM appointments;


6) Appointment Status Count

SELECT status,
COUNT(*) AS total
FROM appointments
GROUP BY status;


7) Treatment Cost Analysis

SELECT treatment_type,
COUNT(*) AS total_treatments
FROM treatments
GROUP BY treatment_type;


8) Total Revenue

SELECT 
SUM(amount) AS total_revenue
FROM bills;


9) Average Treatment Cost

SELECT 
AVG(cost) AS average_cost
FROM treatments;


10) Highest Bill Amount

SELECT *
FROM bills
ORDER BY amount DESC;


11) Most Experienced Doctors

SELECT *
FROM doctors
ORDER BY years_experience DESC;


12) Patient + Appointment

SELECT p.first_name, p.last_name, a.appointment_date, a.status
FROM patients p
JOIN appointments a
ON p.patient_id = a.patient_id;


13) Patient + Doctor + Appointment

SELECT p.first_name AS patient_name, d.first_name AS doctor_name, a.appointment_date
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id;


14) Revenue by Payment Method

SELECT payment_method,
SUM(amount) AS revenue
FROM bills
GROUP BY payment_method;


15) Completed Appointments

SELECT *
FROM appointments
WHERE status = 'Completed';