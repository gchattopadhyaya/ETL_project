CREATE TABLE patient_data (
	PatientID INT,
	Treatment VARCHAR,
	SampleDay VARCHAR,
	AnalysisBatch INT, 
	QualityControl VARCHAR,
	CellType VARCHAR,
	PerecntCells NUMERIC,
	CellCount INT
);

CREATE TABLE patient_key (
	PatientID INT primary key,
	PatientSex VARCHAR,
	PatientAge INT, 
	OnSteroids VARCHAR,
	PatientEthnicity VARCHAR
);
	