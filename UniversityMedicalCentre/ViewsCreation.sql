CREATE VIEW PatientMedications AS
SELECT p.FirstName, p.LastName, m.MedicationName, m.Dosage, m.Frequency
FROM Patients p
INNER JOIN Medications m ON p.PatientID = m.PatientID;


CREATE VIEW PatientBilling AS
SELECT p.FirstName, p.LastName, b.Amount, b.BillingDate
FROM Patients p
INNER JOIN Billing b ON p.PatientID = b.PatientID;

CREATE VIEW PatientLabResults AS
SELECT p.FirstName, p.LastName, l.TestName, l.TestDate, l.TestResults
FROM Patients p
INNER JOIN LabResults l ON p.PatientID = l.PatientID;

CREATE VIEW PatientProcedures AS
SELECT p.FirstName, p.LastName, pr.ICD10CodeID, pr.ProcedureDate
FROM Patients p
INNER JOIN PatientPhysician pp ON p.PatientID = pp.PatientID
INNER JOIN Procedures pr ON pp.PatientPhysicianID = pr.PatientPhysicianID;

CREATE VIEW PatientInsuranceInfo AS
SELECT p.PatientID, p.FirstName, p.LastName, p.DateOfBirth, p.Gender, p.PhoneNumber, p.Address, p.City, p.State, p.ZipCode, i.InsuranceName, i.InsuranceNumber, i.InsurancePlanType, i.InsuranceEffectiveDate, i.InsuranceExpirationDate
FROM Patients p
JOIN Insurances i ON p.InsuranceID = i.InsuranceID;

CREATE VIEW PhysicianInfo AS
SELECT phy.PhysicianID, phy.FirstName, phy.LastName, phy.DateOfBirth, phy.Gender, phy.PhoneNumber, l.LicenseName, l.LicenseDescription, d.DepartmentName, d.DepartmentDescription
FROM Physicians phy
JOIN LegalLicenses l ON phy.LicenseID = l.LicenseID
JOIN HealthDepartments d ON phy.DepartmentID = d.DepartmentID;





