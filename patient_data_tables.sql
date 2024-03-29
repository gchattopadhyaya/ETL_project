CREATE TABLE patient_data (
	patientid INT,
	treatment VARCHAR,
	sampleday VARCHAR,
	analysisbatch INT, 
	qualitycontrol VARCHAR,
	celltype VARCHAR,
	perecentcells NUMERIC,
	cellcount INT
);

DROP TABLE patient_data;

CREATE TABLE patient_key (
	patientid INT primary key,
	patientsex VARCHAR,
	patientage INT, 
	onsteroids VARCHAR,
	patientethnicity VARCHAR
);

DROP TABLE patient_key;
	
-- test that data was loaded correctly from pandas. learned that postgres cant take the camelcase from pandas
SELECT * FROM patient_data;	
SELECT * FROM patient_key;	

-- example of joining tables in SQL instead of in pandas
SELECT * FROM patient_data
JOIN patient_key
ON patient_data.patientid = patient_key.patientid;

--we also did the merge in pandas to show how to do it there and the following is the table of merged data generated in pandas and populated here:
CREATE TABLE merged_data (
	patientid INT,
	treatment VARCHAR,
	sampleday VARCHAR,
	analysisbatch INT, 
	qualitycontrol VARCHAR,
	celltype VARCHAR,
	perecentcells NUMERIC,
	cellcount INT,
	patientsex VARCHAR,
	patientage INT, 
	onsteroids VARCHAR,
	patientethnicity VARCHAR
);

--test that data loaded to merged_data table
SELECT * FROM merged_data;
--success!
