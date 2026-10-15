-- Basic SQL Questions

-- Retrieve all patient records from the Patients table.
SELECT * FROM Patients;

-- Retrieve all doctor records from the Doctors table.
SELECT * FROM Doctors;

-- Retrieve all appointment records from the Appointments table.
SELECT * FROM Appointments;

-- Find the total number of patients in the hospital.
SELECT COUNT(*) as total_patients FROM Patients;

-- Find the total number of doctors in the hospital.
SELECT COUNT(*) as total_doctors from Doctors;

-- Find the total number of appointments.
SELECT COUNT(*) AS total_appointment from Appointments;

-- Find all patients who belong to Pune city.
SELECT * FROM Patients where city="Pune";

-- Retrieve patients whose age is greater than 40 years.
SELECT * FROM Patients where age>40;

-- Find the number of patients in each city.
SELECT city,count(*) as total_patients from Patients group by city;

-- Find the number of appointments for each status.
select status,count(*) as status_count from Appointments group by status;

-- Advanced SQL Questions

-- Retrieve patient names along with their appointment dates, status, and consultation fees using JOIN.
select p.patient_name,a.appointment_date,a.status,a.consultation_fee from Patients p join Appointments a on p.patient_id=a.patient_id;

--  Doctor Appointment Analysis
-- Find the total number of appointments handled by each doctor.
select d.doctor_id,d.doctor_name,count(a.appointment_id)as total_appointment from Doctors d left join Appointments a on d.doctor_id=a.doctor_id
 group by d.doctor_name,d.doctor_id;

-- Identify the top 3 doctors based on the number of completed appointments.
select  d.doctor_id,d.doctor_name,count(*) as total_appointment from Doctors d join Appointments a on d.doctor_id=a.doctor_id where a.status="completed" 
group by d.doctor_name,d.doctor_id order by total_appointment desc limit 3;

-- Calculate the total revenue generated from completed appointments for each department.
select d.department,sum(a.consultation_fee) as total_revenue from Doctors d join Appointments a on d.doctor_id=a.doctor_id where a.status="completed"
group by d.department;

-- Monthly Revenue Analysis
-- Calculate monthly revenue from completed appointments and identify the month with the highest revenue.
select date_format(appointment_date,'%m') as month, sum(consultation_fee) as total_revenue from Appointments where status="completed" 
group by month order by total_revenue desc;

-- Repeat Patient Analysis
-- Identify patients who have booked more than one appointment.
select p.patient_id,p.patient_name,count(a.appointment_id) as total_appointment from Patients p join Appointments a on p.patient_id=a.patient_id
  group by p.patient_name,p.patient_id having total_appointment>1;
  
-- Rank doctors based on their completed appointments using a window function.
select d.doctor_id,d.doctor_name,count(a.appointment_id) as complete_appointment,rank() over(order by count(a.appointment_id) desc) as doctor_ranked
 from Appointments a join Doctors d on d.doctor_id=a.doctor_id
 where a.status="completed" group by d.doctor_name,d.doctor_id;
