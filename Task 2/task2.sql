drop table Patients;
CREATE TABLE Patients (
    PatientName VARCHAR2(100),
    Age NUMBER,
    DoctorName VARCHAR2(100),
    NumberOfVisits NUMBER
);



INSERT INTO Patients (PatientName, Age, DoctorName, NumberOfVisits)
VALUES ('John Doe', 45, 'Dr. Smith', 3);

INSERT INTO Patients (PatientName, Age, DoctorName, NumberOfVisits)
VALUES ('Jane Doe', 38, 'Dr. Brown', 5);

INSERT INTO Patients (PatientName, Age, DoctorName, NumberOfVisits)
VALUES ('Alice Johnson', 29, 'Dr. Green', 7);

INSERT INTO Patients (PatientName, Age, DoctorName, NumberOfVisits)
VALUES ('Bob Brown', 60, 'Dr. Smith', 2);

INSERT INTO Patients (PatientName, Age, DoctorName, NumberOfVisits)
VALUES ('Charlie Davis', 52, 'Dr. White', 4);

INSERT INTO Patients (PatientName, Age, DoctorName, NumberOfVisits)
VALUES ('Emily Clark', 34, 'Dr. Green', 6);

INSERT INTO Patients (PatientName, Age, DoctorName, NumberOfVisits)
VALUES ('Frank Harris', 40, 'Dr. Brown', 1);

INSERT INTO Patients (PatientName, Age, DoctorName, NumberOfVisits)
VALUES ('Grace Lee', 50, 'Dr. White', 8);

INSERT INTO Patients (PatientName, Age, DoctorName, NumberOfVisits)
VALUES ('Henry Wilson', 27, 'Dr. Brown', 9);

INSERT INTO Patients (PatientName, Age, DoctorName, NumberOfVisits)
VALUES ('Ivy Thompson', 33, 'Dr. Smith', 10);




SELECT DoctorName
FROM (
    SELECT DoctorName, COUNT(PatientName) AS PatientCount
    FROM Patients
    GROUP BY DoctorName
    ORDER BY PatientCount DESC
)
WHERE ROWNUM = 1;



SELECT PatientName, NumberOfVisits
FROM Patients
ORDER BY NumberOfVisits DESC
FETCH FIRST 5 ROWS ONLY;

