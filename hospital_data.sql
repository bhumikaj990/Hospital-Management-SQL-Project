CREATE DATABASE HospitalDB;
USE HospitalDB;
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50)
);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100),
    department VARCHAR(50)
);

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20),
    consultation_fee DECIMAL(10,2),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

INSERT INTO Patients VALUES
(1,'Amit Sharma','Male',35,'Pune'),
(2,'Priya Patil','Female',28,'Mumbai'),
(3,'Rahul Jadhav','Male',45,'Pune'),
(4,'Sneha Kulkarni','Female',32,'Nashik'),
(5,'Rohit Deshmukh','Male',50,'Pune'),
(6,'Pooja Shinde','Female',25,'Mumbai'),
(7,'Akash More','Male',40,'Kolhapur'),
(8,'Neha Joshi','Female',30,'Pune'),
(9,'Sagar Pawar','Male',55,'Satara'),
(10,'Rutuja Kale','Female',22,'Nashik'),
(11,'Kiran Gaikwad','Male',38,'Mumbai'),
(12,'Anjali Chavan','Female',42,'Pune'),
(13,'Vikas Shinde','Male',29,'Kolhapur'),
(14,'Meera Patil','Female',60,'Satara'),
(15,'Omkar More','Male',33,'Pune'),
(16,'Snehal Pawar','Female',27,'Mumbai'),
(17,'Nikhil Joshi','Male',48,'Nashik'),
(18,'Kavita Desai','Female',36,'Pune'),
(19,'Prasad Kulkarni','Male',31,'Satara'),
(20,'Aarti Shinde','Female',44,'Kolhapur'),
(21,'Suresh Patil','Male',52,'Pune'),
(22,'Madhuri More','Female',39,'Mumbai'),
(23,'Ganesh Jadhav','Male',26,'Nashik'),
(24,'Pallavi Shah','Female',34,'Pune'),
(25,'Swapnil Kale','Male',41,'Satara'),
(26,'Rani Pawar','Female',23,'Kolhapur'),
(27,'Chetan Gaikwad','Male',37,'Mumbai'),
(28,'Isha Kulkarni','Female',29,'Pune'),
(29,'Manoj Shinde','Male',58,'Nashik'),
(30,'Komal Patil','Female',46,'Pune');

INSERT INTO Doctors VALUES
(101,'Dr. Amit Shah','Cardiology'),
(102,'Dr. Priya Rao','Neurology'),
(103,'Dr. Rahul Mehta','Orthopedics'),
(104,'Dr. Sneha Joshi','Pediatrics'),
(105,'Dr. Kunal Patil','General Medicine'),
(106,'Dr. Neha Desai','Cardiology'),
(107,'Dr. Akshay Kulkarni','Neurology'),
(108,'Dr. Pooja More','Orthopedics'),
(109,'Dr. Rohan Pawar','Dermatology'),
(110,'Dr. Anjali Shinde','General Medicine');

INSERT INTO Appointments
(appointment_id, patient_id, doctor_id, appointment_date, status, consultation_fee)
VALUES
(1001, 1, 101, '2026-01-05', 'Completed', 500),
(1002, 2, 102, '2026-01-07', 'Completed', 600),
(1003, 3, 103, '2026-01-10', 'Scheduled', 700),
(1004, 4, 104, '2026-01-12', 'Completed', 400),
(1005, 5, 105, '2026-01-15', 'Cancelled', 500),
(1006, 6, 106, '2026-01-18', 'Completed', 600),
(1007, 7, 107, '2026-01-20', 'Completed', 700),
(1008, 8, 108, '2026-01-22', 'Scheduled', 800),
(1009, 9, 109, '2026-01-25', 'Completed', 400),
(1010, 10, 110, '2026-01-28', 'Cancelled', 500),
(1011, 11, 101, '2026-02-02', 'Completed', 600),
(1012, 12, 102, '2026-02-04', 'Completed', 700),
(1013, 13, 103, '2026-02-06', 'Scheduled', 800),
(1014, 14, 104, '2026-02-08', 'Completed', 400),
(1015, 15, 105, '2026-02-10', 'Completed', 500),
(1016, 16, 106, '2026-02-12', 'Cancelled', 600),
(1017, 17, 107, '2026-02-14', 'Completed', 700),
(1018, 18, 108, '2026-02-16', 'Scheduled', 800),
(1019, 19, 109, '2026-02-18', 'Completed', 400),
(1020, 20, 110, '2026-02-20', 'Completed', 500),
(1021, 21, 101, '2026-03-01', 'Completed', 600),
(1022, 22, 102, '2026-03-03', 'Scheduled', 700),
(1023, 23, 103, '2026-03-05', 'Completed', 800),
(1024, 24, 104, '2026-03-07', 'Completed', 400),
(1025, 25, 105, '2026-03-09', 'Cancelled', 500),
(1026, 26, 106, '2026-03-11', 'Completed', 600),
(1027, 27, 107, '2026-03-13', 'Scheduled', 700),
(1028, 28, 108, '2026-03-15', 'Completed', 800),
(1029, 29, 109, '2026-03-17', 'Completed', 400),
(1030, 30, 110, '2026-03-19', 'Cancelled', 500),
(1031, 1, 102, '2026-04-02', 'Completed', 600),
(1032, 2, 103, '2026-04-04', 'Scheduled', 700),
(1033, 3, 104, '2026-04-06', 'Completed', 800),
(1034, 4, 105, '2026-04-08', 'Completed', 400),
(1035, 5, 106, '2026-04-10', 'Completed', 500),
(1036, 6, 107, '2026-04-12', 'Cancelled', 600),
(1037, 7, 108, '2026-04-14', 'Completed', 700),
(1038, 8, 109, '2026-04-16', 'Scheduled', 800),
(1039, 9, 110, '2026-04-18', 'Completed', 400),
(1040, 10, 101, '2026-04-20', 'Completed', 500),
(1041, 11, 103, '2026-05-01', 'Completed', 600),
(1042, 12, 104, '2026-05-03', 'Scheduled', 700),
(1043, 13, 105, '2026-05-05', 'Completed', 800),
(1044, 14, 106, '2026-05-07', 'Cancelled', 400),
(1045, 15, 107, '2026-05-09', 'Completed', 500),
(1046, 16, 108, '2026-05-11', 'Completed', 600),
(1047, 17, 109, '2026-05-13', 'Scheduled', 700),
(1048, 18, 110, '2026-05-15', 'Completed', 800),
(1049, 19, 101, '2026-05-17', 'Completed', 400),
(1050, 20, 102, '2026-05-19', 'Cancelled', 500);