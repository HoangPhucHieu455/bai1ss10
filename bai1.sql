CREATE DATABASE session10_btvn;
USE session10_btvn ;

CREATE TABLE Patients (
Patient_ID INT PRIMARY KEY,
Full_Name VARCHAR(100),
Age INT,
Room_Number INT,
HIV_Status VARCHAR(50),
Mental_Health_History VARCHAR(255)
);

-- Chèn một số dữ Tiệu
INSERT INTO Patients (Patient_ID, Full_Name, Age, Room_Number, HIV_Status, Mental_Health_History)
VALUES
(1, 'Minh Thu', 30, 101, 'Negative', 'None'),
(2, 'Hồng Vân', 40, 102, 'Positive', 'Anxiety'),
(3, 'Cao Cường', 25, 103, 'Negative', 'None');

CREATE VIEW Recception_Patient_View AS
SELECT Patient_id,Full_Name,Age,Room_Number
FROM Patients
WHERE Age > 0
WITH CHECK OPTION ;

SELECT * FROM Recception_Patient_View ;

UPDATE Patients 
SET age=-10
WHERE Patient_ID = 1;