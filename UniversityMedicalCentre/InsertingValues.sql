INSERT INTO LegalLicenses (LicenseName, LicenseDescription) VALUES 
('Medical License', 'This license allows a person to practice medicine legally.'),
('Nursing License', 'This license allows a person to practice nursing legally.'),
('Pharmacy License', 'This license allows a person to operate a pharmacy legally.'),
('Dental License', 'This license allows a person to practice dentistry legally.'),
('Physical Therapy License', 'This license allows a person to practice physical therapy legally.'),
('Occupational Therapy License', 'This license allows a person to practice occupational therapy legally.'),
('Chiropractic License', 'This license allows a person to practice chiropractic care legally.'),
('Psychologist License', 'This license allows a person to practice psychology legally.'),
('Veterinary License', 'This license allows a person to practice veterinary medicine legally.'),
('EMT License', 'This license allows a person to practice emergency medical services legally.');


INSERT INTO Insurances (InsuranceName, InsuranceNumber, InsurancePlanType, InsuranceEffectiveDate, InsuranceExpirationDate) VALUES 
('Blue Cross Blue Shield', '12345', 'PPO', '2022-01-01', '2022-12-31'),
('Aetna', '98765', 'HMO', '2022-02-01', '2022-11-30'),
('Cigna', '45678', 'POS', '2022-03-01', '2022-12-31'),
('Humana', '87654', 'EPO', '2022-04-01', '2022-10-31'),
('United Healthcare', '23456', 'HSA', '2022-05-01', '2022-12-31'),
('Kaiser Permanente', '56789', 'HMO', '2022-06-01', '2022-11-30'),
('Molina Healthcare', '54321', 'PPO', '2022-07-01', '2022-12-31'),
('Oscar Health', '67890', 'POS', '2022-08-01', '2022-10-31'),
('Medicare', '78901', 'Original Medicare', '2022-09-01', '2022-12-31'),
('Medicaid', '90123', 'Managed Medicaid', '2022-10-01', '2022-12-31');

INSERT INTO HealthDepartments (DepartmentName, DepartmentDescription) VALUES 
('Pediatrics', 'Department of medicine focused on the care of infants, children, and adolescents.'),
('Ophthalmology', 'Department of medicine focused on the diagnosis and treatment of eye disorders.'),
('Orthopedics', 'Department of medicine focused on the diagnosis and treatment of musculoskeletal disorders.'),
('Neurology', 'Department of medicine focused on the diagnosis and treatment of disorders of the nervous system.'),
('Cardiology', 'Department of medicine focused on the diagnosis and treatment of heart and cardiovascular disorders.'),
('Gastroenterology', 'Department of medicine focused on the diagnosis and treatment of digestive system disorders.'),
('Obstetrics and Gynecology', 'Department of medicine focused on the care of women during pregnancy, childbirth, and the postpartum period.'),
('Dermatology', 'Department of medicine focused on the diagnosis and treatment of skin disorders.'),
('Otolaryngology', 'Department of medicine focused on the diagnosis and treatment of ear, nose, and throat disorders.'),
('Psychiatry', 'Department of medicine focused on the diagnosis and treatment of mental health disorders.');


INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, PhoneNumber, Address, City, State, ZipCode, InsuranceID) VALUES
('John', 'Doe', '1985-06-12', 'M', '555-555-1212', '123 Main St', 'Anytown', 'CA', '12345', 1),
('Jane', 'Smith', '1990-09-22', 'F', '555-555-1313', '456 Maple Ave', 'Othertown', 'NY', '54321', 2),
('David', 'Lee', '1972-03-04', 'M', '555-555-1414', '789 Oak Blvd', 'Somewhere', 'TX', '67890', 3),
('Lisa', 'Nguyen', '1988-12-31', 'F', '555-555-1515', '321 Elm St', 'Anytown', 'CA', '12345', 1),
('Michael', 'Garcia', '1975-07-20', 'M', '555-555-1616', '654 Cedar Ave', 'Othertown', 'NY', '54321', 2),
('Emily', 'Kim', '1995-02-15', 'F', '555-555-1717', '987 Pine St', 'Somewhere', 'TX', '67890', 3),
('William', 'Johnson', '1980-11-02', 'M', '555-555-1818', '555 Fifth St', 'Anytown', 'CA', '12345', 1),
('Sarah', 'Martinez', '1989-04-27', 'F', '555-555-1919', '777 Sixth Ave', 'Othertown', 'NY', '54321', 2),
('Daniel', 'Rodriguez', '1978-08-14', 'M', '555-555-2020', '111 Seventh St', 'Somewhere', 'TX', '67890', 3),
('Megan', 'Chen', '1993-01-07', 'F', '555-555-2121', '222 Eighth Ave', 'Anytown', 'CA', '12345', 1);

INSERT INTO Physicians (FirstName, LastName, DateOfBirth, Gender, PhoneNumber, LicenseID, DepartmentID) VALUES
('Sophia', 'Lee', '1986-09-12', 'F', '555-555-1212', 11, 7),
('Ethan', 'Nguyen', '1978-11-23', 'M', '555-555-1313', 12, 8),
('Ava', 'Garcia', '1991-02-01', 'F', '555-555-1414', 13, 9),
('Jacob', 'Kim', '1983-05-31', 'M', '555-555-1515', 14, 10),
('Isabella', 'Johnson', '1988-08-10', 'F', '555-555-1616', 15, 11),
('Noah', 'Martinez', '1985-03-17', 'M', '555-555-1717', 16, 12),
('Olivia', 'Rodriguez', '1993-07-28', 'F', '555-555-1818', 17, 13),
('Liam', 'Chen', '1980-12-02', 'M', '555-555-1919', 18, 14),
('Emma', 'Gonzalez', '1982-01-15', 'F', '555-555-2020', 19, 15),
('Mason', 'Perez', '1974-09-30', 'M', '555-555-2121', 20, 16);


INSERT INTO PatientPhysician (PatientID, PhysicianID)
VALUES (1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 1);

INSERT INTO Medications (MedicationName, Dosage, Frequency, PrescribingPhysicianID, PatientID)
VALUES ('Lisinopril', '20mg', 'Daily', 3, 1),
       ('Metformin', '1000mg', 'Twice daily', 5, 2),
       ('Levothyroxine', '75mcg', 'Daily', 2, 3),
       ('Atorvastatin', '40mg', 'Nightly', 1, 4),
       ('Albuterol', '90mcg', 'As needed', 4, 5),
       ('Ibuprofen', '800mg', 'Every 8 hours', 2, 6),
       ('Hydrocodone', '10mg', 'As needed', 6, 7),
       ('Trazodone', '50mg', 'Nightly', 1, 8),
       ('Omeprazole', '20mg', 'Daily', 4, 9),
       ('Aspirin', '81mg', 'Daily', 5, 10);


INSERT INTO MedicationHistory (PatientID, MedicationID)
VALUES (1, 1),
(2, 3),
(3, 5),
(4, 7),
(5, 9),
(6, 2),
(7, 4),
(8, 6),
(9, 8),
(10, 10);

INSERT INTO MedicalDuties (DutiesName, DutiesDescription)
VALUES 
('Diagnosing and treating illnesses', 'Physicians diagnose and treat illnesses and injuries'),
('Prescribing and administering medication', 'Physicians prescribe and administer medications to patients'),
('Performing medical procedures', 'Physicians perform medical procedures such as surgeries'),
('Ordering and interpreting diagnostic tests', 'Physicians order and interpret diagnostic tests such as blood tests, X-rays, and CT scans'),
('Providing preventative care and health education', 'Physicians provide preventative care and health education to patients'),
('Managing patient care and medical records', 'Physicians manage patient care and medical records'),
('Collaborating with other healthcare professionals', 'Physicians collaborate with other healthcare professionals such as nurses and therapists'),
('Managing and supervising medical staff', 'Physicians manage and supervise medical staff such as nurses and medical assistants'),
('Researching and developing new treatments and technologies', 'Physicians participate in research and development of new treatments and technologies'),
('Advocating for patient rights and healthcare policy', 'Physicians advocate for patient rights and healthcare policy');

INSERT INTO Nurses (FirstName, LastName, Gender, DateOfBirth, PhoneNumber, Address, City, State, ZipCode, DutiesID)
VALUES 
('Emily', 'Smith', 'F', '1990-05-12', '555-1234', '123 Main St', 'New York', 'NY', '10001', 1),
('Megan', 'Johnson', 'F', '1993-09-15', '555-2345', '456 Maple Ave', 'Los Angeles', 'CA', '90001', 2),
('Liam', 'Brown', 'M', '1991-02-20', '555-3456', '789 Oak St', 'Chicago', 'IL', '60007', 1),
('Avery', 'Davis', 'F', '1989-11-25', '555-4567', '321 Pine Rd', 'Miami', 'FL', '33010', 3),
('Noah', 'Garcia', 'M', '1992-07-04', '555-5678', '654 Cedar Blvd', 'Dallas', 'TX', '75001', 2),
('Abigail', 'Martinez', 'F', '1988-12-30', '555-6789', '987 Elm St', 'San Francisco', 'CA', '94101', 3),
('Ethan', 'Wilson', 'M', '1994-03-10', '555-7890', '246 Birch Dr', 'Boston', 'MA', '02101', 1),
('Olivia', 'Anderson', 'F', '1990-08-22', '555-8901', '753 Oak Ave', 'Seattle', 'WA', '98101', 2),
('Mason', 'Taylor', 'M', '1993-01-17', '555-9012', '159 Maple Ln', 'Houston', 'TX', '77001', 3),
('Sophia', 'Thomas', 'F', '1989-06-03', '555-0123', '852 Elm Blvd', 'Atlanta', 'GA', '30301', 1);

INSERT INTO Notes (PatientID, PhysicianID, NurseID, NoteDate, NoteText)
VALUES
    (1, 6, 1, '2023-04-29 13:00:00', 'Patient presented with mild fever and cough. Prescribed antibiotics.'),
    (2, 7, 2, '2023-04-29 14:30:00', 'Patient complaining of pain in left knee. Advised to rest and prescribed pain medication.'),
    (3, 8, 3, '2023-04-29 16:00:00', 'Patient recovering well from surgery. Incision site looks clean and dry.'),
    (4, 9, 4, '2023-04-30 09:00:00', 'Patient reports feeling dizzy and lightheaded. Vital signs within normal range.'),
    (5, 10, 5, '2023-04-30 10:30:00', 'Patient presented with rash on arms and legs. Prescribed antihistamines.'),
    (6, 6, 6, '2023-04-30 12:00:00', 'Patient feeling better after taking antibiotics. Advised to complete full course of medication.'),
    (7, 7, 7, '2023-04-30 13:30:00', 'Patient reports feeling more pain in left knee. Prescribed stronger pain medication.'),
    (8, 8, 8, '2023-04-30 15:00:00', 'Patient discharged from hospital. Instructed to follow up with physician in two weeks.'),
    (9, 9, 9, '2023-04-30 16:30:00', 'Patient feeling better after resting for an hour. Discharged from emergency department.'),
    (10, 10, 10, '2023-05-01 09:00:00', 'Patient reports no improvement in rash. Referred to dermatologist for further evaluation.');

INSERT INTO Appointments (PatientPhysicianID, AppointmentDateTime, Reason)
VALUES
(1, '2023-05-10 10:00:00', 'Routine check-up'),
(2, '2023-05-11 14:30:00', 'Follow-up after surgery'),
(3, '2023-05-12 09:00:00', 'Annual physical exam'),
(4, '2023-05-13 11:00:00', 'Consultation for back pain'),
(5, '2023-05-14 13:00:00', 'Vaccination appointment'),
(6, '2023-05-15 15:30:00', 'Consultation for allergies'),
(7, '2023-05-16 16:00:00', 'Follow-up for diabetes management'),
(8, '2023-05-17 10:30:00', 'Routine check-up'),
(9, '2023-05-18 11:30:00', 'Follow-up after hospitalization'),
(10, '2023-05-19 14:00:00', 'Consultation for weight management');

INSERT INTO ICD10Codes (Code, Description)
VALUES
    ('A00', 'Cholera'),
    ('A01', 'Typhoid and paratyphoid fevers'),
    ('A02', 'Other salmonella infections'),
    ('A03', 'Shigellosis'),
    ('A04', 'Other bacterial intestinal infections'),
    ('A05', 'Other bacterial foodborne intoxications, not elsewhere classified'),
    ('A06', 'Amoebiasis'),
    ('A07', 'Other protozoal intestinal diseases'),
    ('A08', 'Viral and other specified intestinal infections'),
    ('A09', 'Diarrhoea and gastro-enteritis of presumed infectious origin');

INSERT INTO MedicalDiagnosis (PatientID, PhysicianID, ICD10CodeID, DiagnosisDate)
VALUES
(1, 6, 1, '2023-04-29'),
(2, 7, 2, '2023-04-29'),
(3, 8, 3, '2023-04-29'),
(4, 9, 4, '2023-04-30'),
(5, 10, 5, '2023-04-30'),
(6, 6, 6, '2023-04-30'),
(7, 7, 7, '2023-04-30'),
(8, 8, 8, '2023-04-30'),
(9, 9, 9, '2023-04-30'),
(10, 10, 10, '2023-05-01');

INSERT INTO HospitalRooms (RoomNumber, RoomType, RoomDescription)
VALUES
('101', 'Standard', 'A standard room with a single bed'),
('102', 'Standard', 'A standard room with a single bed'),
('103', 'Standard', 'A standard room with a single bed'),
('201', 'Standard', 'A standard room with a single bed'),
('202', 'Standard', 'A standard room with a single bed'),
('203', 'Standard', 'A standard room with a single bed'),
('301', 'Deluxe', 'A deluxe room with two beds and a view of the garden'),
('302', 'Deluxe', 'A deluxe room with two beds and a view of the garden'),
('303', 'Deluxe', 'A deluxe room with two beds and a view of the garden'),
('401', 'Suite', 'A luxurious suite with a king-sized bed and a separate living area');


INSERT INTO Admissions (PatientID, PhysicianID, RoomID, DiagnosisID, AdmissionDate, DischargeDate)
VALUES
(1, 3, 2, 1, '2022-04-01 12:00:00', '2022-04-05 10:00:00'),
(2, 2, 1, 3, '2022-05-10 08:00:00', '2022-05-15 14:00:00'),
(3, 1, 3, 2, '2022-06-20 16:00:00', '2022-06-22 18:00:00'),
(4, 4, 4, 4, '2022-07-03 10:00:00', '2022-07-06 12:00:00'),
(5, 2, 5, 5, '2022-08-01 07:00:00', '2022-08-02 16:00:00'),
(6, 3, 6, 6, '2022-09-05 14:00:00', NULL),
(7, 1, 7, 7, '2022-10-11 11:00:00', NULL),
(8, 4, 8, 8, '2022-11-20 08:00:00', NULL),
(9, 2, 9, 9, '2022-12-01 15:00:00', NULL),
(10, 3, 10, 10, '2023-01-02 10:00:00', NULL);

INSERT INTO Procedures (ICD10CodeID, PatientPhysicianID, ProcedureDate)
VALUES
    (1, 1, '2022-03-15'),
    (2, 2, '2022-04-20'),
    (3, 3, '2022-05-10'),
    (4, 4, '2022-06-01'),
    (5, 5, '2022-07-04'),
    (6, 6, '2022-08-15'),
    (7, 7, '2022-09-21'),
    (8, 8, '2022-10-10'),
    (9, 9, '2022-11-02'),
    (10, 10, '2022-12-25');

INSERT INTO MedicationCode (MedicationID, CodeValue, CodeDescription)
VALUES
    (1, '123', 'Medication A code 123'),
    (2, '456', 'Medication B code 456'),
    (3, '789', 'Medication C code 789'),
    (4, '321', 'Medication D code 321'),
    (5, '654', 'Medication E code 654'),
    (6, '987', 'Medication F code 987'),
    (7, '741', 'Medication G code 741'),
    (8, '852', 'Medication H code 852'),
    (9, '963', 'Medication I code 963'),
    (10, '159', 'Medication J code 159');

INSERT INTO LabResults (TestName, TestDate, TestResults, PatientID, PhysicianID)
VALUES
    ('Blood sugar test', '2023-04-29', '120 mg/dL', 1, 5),
    ('Urinalysis', '2023-04-28', 'Normal', 2, 6),
    ('Complete blood count', '2023-04-27', 'Normal', 3, 7),
    ('Electrocardiogram', '2023-04-26', 'Sinus rhythm', 4, 8),
    ('Stool culture', '2023-04-25', 'Positive for Salmonella', 5, 9),
    ('Thyroid function test', '2023-04-24', 'Normal', 6, 10),
    ('Liver function test', '2023-04-23', 'Elevated ALT levels', 7, 1),
    ('Kidney function test', '2023-04-22', 'Normal', 8, 2),
    ('Lipid panel', '2023-04-21', 'Elevated LDL cholesterol', 9, 3),
    ('Pregnancy test', '2023-04-20', 'Positive', 10, 4);

INSERT INTO Schedule (PhysicianID, AppointmentID, ScheduleDate, ScheduleTime)
VALUES
(1, 1, '2023-05-01', '09:00:00'),
(1, 2, '2023-05-02', '10:00:00'),
(1, 3, '2023-05-03', '11:00:00'),
(2, 4, '2023-05-04', '14:00:00'),
(2, 5, '2023-05-05', '15:00:00'),
(2, 6, '2023-05-06', '16:00:00'),
(3, 7, '2023-05-07', '09:00:00'),
(3, 8, '2023-05-08', '10:00:00'),
(3, 9, '2023-05-09', '11:00:00'),
(4, 10, '2023-05-10', '14:00:00');

INSERT INTO Payments (PaymentDate, Amount) 
VALUES 
('2023-04-30', 500.00),
('2023-04-29', 1000.00),
('2023-04-28', 750.00),
('2023-04-27', 1250.00),
('2023-04-26', 900.00),
('2023-04-25', 600.00),
('2023-04-24', 800.00),
('2023-04-23', 1500.00),
('2023-04-22', 1100.00),
('2023-04-21', 950.00);

INSERT INTO Billing (PatientID, PaymentID, BillingDate, Amount)
VALUES
(1, 1, '2023-04-01', 500.00),
(2, 2, '2023-04-02', 750.00),
(3, 3, '2023-04-03', 1000.00),
(4, 4, '2023-04-04', 1500.00),
(5, 5, '2023-04-05', 2000.00),
(6, 6, '2023-04-06', 2500.00),
(7, 7, '2023-04-07', 3000.00),
(8, 8, '2023-04-08', 3500.00),
(9, 9, '2023-04-09', 4000.00),
(10, 10, '2023-04-10', 4500.00);


INSERT INTO DischargeInstructions (PatientID, PhysicianID, DischargeInstructions, DischargeDate)
VALUES 
(1, 2, 'Take medication as prescribed', '2022-04-01'),
(1, 2, 'Follow up with primary care physician in 1 week', '2022-04-01'),
(3, 4, 'Increase physical activity gradually', '2022-04-03'),
(3, 4, 'Return to work in 2 weeks', '2022-04-03'),
(5, 6, 'Maintain a healthy diet and exercise regimen', '2022-04-05'),
(5, 6, 'Take medication as directed by physician', '2022-04-05'),
(7, 8, 'Avoid strenuous activity for 1 week', '2022-04-07'),
(7, 8, 'Follow up with specialist in 2 weeks', '2022-04-07'),
(9, 10, 'Get plenty of rest and drink fluids', '2022-04-09'),
(9, 10, 'Take medication as prescribed', '2022-04-09');
























