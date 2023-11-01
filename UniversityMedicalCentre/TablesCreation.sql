CREATE TABLE Insurances(
    InsuranceID INT PRIMARY KEY IDENTITY(1,1),
    InsuranceName NVARCHAR(100) NOT NULL,
    InsuranceNumber NVARCHAR(100) NOT NULL,
    InsurancePlanType NVARCHAR(50) NOT NULL,
    InsuranceEffectiveDate DATE NOT NULL,
    InsuranceExpirationDate DATE NOT NULL,
);

CREATE TABLE LegalLicenses (
    LicenseID INT PRIMARY KEY IDENTITY(1,1),
    LicenseName NVARCHAR(100) NOT NULL,
    LicenseDescription NVARCHAR(500) NULL
);

CREATE TABLE HealthDepartments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL,
    DepartmentDescription NVARCHAR(500) NULL
);

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender CHAR(1) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    ZipCode VARCHAR(10) NOT NULL,
    InsuranceID INT NOT NULL,
    FOREIGN KEY (InsuranceID) REFERENCES Insurances (InsuranceID),
);

CREATE TABLE Physicians (
    PhysicianID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender NVARCHAR(10) NOT NULL,
    PhoneNumber NVARCHAR(20) NOT NULL,
    LicenseID INT NOT NULL,
    DepartmentID INT NOT NULL,
    CONSTRAINT FK_Physicians_License FOREIGN KEY (LicenseID) REFERENCES LegalLicenses(LicenseID),
    CONSTRAINT FK_Physicians_Department FOREIGN KEY (DepartmentID) REFERENCES HealthDepartments(DepartmentID)
);

CREATE TABLE Nurses (
   NurseID INT PRIMARY KEY IDENTITY(1,1),
   FirstName VARCHAR(255) NOT NULL,
   LastName VARCHAR(255) NOT NULL,
   Gender CHAR(1) NOT NULL,
   DateOfBirth DATE NOT NULL,
   PhoneNumber VARCHAR(20) NOT NULL,
   Address VARCHAR(255) NOT NULL,
   City VARCHAR(255) NOT NULL,
   State VARCHAR(255) NOT NULL,
   ZipCode VARCHAR(10) NOT NULL,
   DutiesID INT NOT NULL,
   FOREIGN KEY (DutiesID) REFERENCES MedicalDuties(DutiesID)
);

CREATE TABLE Notes (
    NoteID INT PRIMARY KEY IDENTITY(1,1),
    PatientID INT NOT NULL,
    PhysicianID INT NOT NULL,
    NurseID INT NOT NULL,
    NoteDate DATETIME NOT NULL,
    NoteText NVARCHAR(MAX) NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (PhysicianID) REFERENCES Physicians(PhysicianID),
    FOREIGN KEY (NurseID) REFERENCES Nurses(NurseID)
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY IDENTITY(1,1),
    PatientPhysicianID INT NOT NULL,
    AppointmentDateTime DATETIME NOT NULL,
    Reason VARCHAR(255) NOT NULL,
    CONSTRAINT FK_Appointments_PatientPhysicianID FOREIGN KEY (PatientPhysicianID) REFERENCES PatientPhysician (PatientPhysicianID),
    CONSTRAINT UQ_Appointments_AppointmentDateTime UNIQUE (AppointmentDateTime)
);

CREATE TABLE Admissions (
    AdmissionID INT PRIMARY KEY IDENTITY(1,1),
    PatientID INT NOT NULL,
    PhysicianID INT NOT NULL,
    RoomID INT NOT NULL,
    DiagnosisID INT NOT NULL,
    AdmissionDate DATETIME NOT NULL,
    DischargeDate DATETIME NULL DEFAULT NULL,
    FOREIGN KEY (DiagnosisID) REFERENCES MedicalDiagnosis(DiagnosisID),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (RoomID) REFERENCES HospitalRooms(RoomID),
    FOREIGN KEY (PhysicianID) REFERENCES Physicians(PhysicianID),
    CHECK (AdmissionDate <= DischargeDate)
);


CREATE TABLE Procedures (
  ProcedureID INT PRIMARY KEY IDENTITY(1,1),
  ICD10CodeID INT NOT NULL,
  PatientPhysicianID INT NOT NULL,
  ProcedureDate DATE NOT NULL,
  FOREIGN KEY (ICD10CodeID) REFERENCES ICD10Codes (ICD10CodeID),
  FOREIGN KEY (PatientPhysicianID) REFERENCES PatientPhysician (PatientPhysicianID)
);

CREATE TABLE Billing (
  BillingID INT PRIMARY KEY IDENTITY(1,1),
  PatientID INT NOT NULL,
  PaymentID INT NOT NULL,
  BillingDate DATE NOT NULL,
  Amount DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (PatientID) REFERENCES Patients (PatientID),
  FOREIGN KEY (PaymentID) REFERENCES Payments (PaymentID),
);

CREATE TABLE LabResults(
    LabResultsID INT PRIMARY KEY IDENTITY(1,1),
    TestName VARCHAR(100),
    TestDate DATE,
    TestResults VARCHAR(100),
    PatientID INT,
    PhysicianID INT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (PhysicianID) REFERENCES Physicians(PhysicianID)
);

CREATE TABLE Medications (
    MedicationID INT PRIMARY KEY IDENTITY(1,1),
    MedicationName VARCHAR(100),
    Dosage VARCHAR(50),
    Frequency VARCHAR(50),
    PrescribingPhysicianID INT,
    PatientID INT,
    FOREIGN KEY (PrescribingPhysicianID) REFERENCES Physicians(PhysicianID),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

CREATE TABLE ICD10Codes (
  ICD10CodeID INT PRIMARY KEY IDENTITY(1,1),
  Code VARCHAR(10) NOT NULL,
  Description VARCHAR(255) NOT NULL
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    PaymentDate DATE NOT NULL,
    Amount DECIMAL(10,2) NOT NULL
);


CREATE TABLE PatientPhysician (
    PatientPhysicianID INT PRIMARY KEY IDENTITY(1,1),
    PatientID INT NOT NULL,
    PhysicianID INT NOT NULL,
    CONSTRAINT FK_PatientPhysician_PatientID FOREIGN KEY (PatientID) REFERENCES Patients (PatientID),
    CONSTRAINT FK_PatientPhysician_PhysicianID FOREIGN KEY (PhysicianID) REFERENCES Physicians (PhysicianID)
);

CREATE TABLE MedicalDuties (
    DutiesID INT PRIMARY KEY IDENTITY(1,1),
    DutiesName NVARCHAR(100) NOT NULL,
    DutiesDescription NVARCHAR(500) NULL
);



CREATE TABLE HospitalRooms (
    RoomID INT PRIMARY KEY IDENTITY(1,1),
    RoomNumber NVARCHAR(50) NOT NULL,
    RoomType NVARCHAR(50) NOT NULL,
    RoomDescription NVARCHAR(500) NULL
);

CREATE TABLE MedicalDiagnosis (
  DiagnosisID INT PRIMARY KEY IDENTITY(1,1),
  PatientID INT NOT NULL,
  PhysicianID INT NOT NULL,
  ICD10CodeID INT NOT NULL,
  DiagnosisDate DATE NOT NULL,
  FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
  FOREIGN KEY (PhysicianID) REFERENCES Physicians(PhysicianID),
  FOREIGN KEY (ICD10CodeID) REFERENCES ICD10Codes (ICD10CodeID),
);


CREATE TABLE MedicationHistory(
MedicationHistoryID INT PRIMARY KEY IDENTITY(1,1),
PatientID INT NOT NULL,
MedicationID INT NOT NULL,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID)
);

CREATE TABLE MedicationCode (
    MedicationCodeID INT PRIMARY KEY IDENTITY(1,1),
    MedicationID INT,
    CodeValue VARCHAR(50),
    CodeDescription VARCHAR(255),
    FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID)
);

CREATE TABLE Schedule (
    ScheduleID INT PRIMARY KEY IDENTITY(1,1),
    PhysicianID INT NOT NULL,
    AppointmentID INT NOT NULL,
    ScheduleDate DATE NOT NULL,
    ScheduleTime TIME NOT NULL,
    FOREIGN KEY (PhysicianID) REFERENCES Physicians(PhysicianID),
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID),
    UNIQUE (PhysicianID, ScheduleDate, ScheduleTime),
    CHECK (ScheduleDate >= GETDATE()),
    CHECK (ScheduleTime >= '00:00:00' AND ScheduleTime <= '23:59:59')
);

CREATE TABLE DischargeInstructions(
DischargeInstructionID INT PRIMARY KEY IDENTITY(1,1),
PatientID INT NOT NULL,
PhysicianID INT NOT NULL,
DischargeInstructions VARCHAR(250),
DischargeDate DATE NOT NULL,
FOREIGN KEY (PatientID) REFERENCES Patients (PatientID),
FOREIGN KEY (PhysicianID) REFERENCES Physicians(PhysicianID)
);




















