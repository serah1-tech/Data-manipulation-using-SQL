USE hospital_db;
-- question 1.1 Basic Data Retrieval from the pateints table
SELECT first_name, last_name, date_of_birth
FROM patients;

-- question 1.2 Baic data retieval from the providers table
SELECT provider_id, first_name, provider_speciality
FROM providers;



-- question 2.1 pattern based filtering from the patients table whose names start with Ab
SELECT first_name, last_name
FROM patients
WHERE first_name LIKE 'Ab%';

-- question 2.2 Retrieve all providers whose provide speciality end with y
SELECT first_name, last_name, provider_speciality
FROM providers
WHERE provider_speciality LIKE '%y';

-- question 3.1 Finding all patients born after 1980
SELECT first_name, last_name, date_of_birth
FROM patients
WHERE date_of_birth > '1980-01-01';

-- question 3.2  Retrieve visits where the acuity level is 2 or higher
SELECT visit_id, acuity_level
FROM visits
WHERE acuity_level >= 2;

-- question 4.1 WHERE Clause with Logical Operators . Find patients who speak Spanish
SELECT first_name, last_name
FROM patients
WHERE language = 'Spanish';

-- question 4.2  WHERE Clause with Logical Operators.Retrieve visits where the reason is "Migraine" and the disposition is "Admitted"
SELECT visit_id, reason, disposition
FROM visits
WHERE reason = 'Migraine' AND disposition = 'Admitted';

-- question 4.3 WHERE Clause with Logical Operators. Find patients born between 1975 and 1980
SELECT first_name, last_name, date_of_birth
FROM patients
WHERE date_of_birth BETWEEN '1975-01-01' AND '1980-12-31';

-- question 5.1 Sorting data. Retrieve patient names and sort them in alphabetical order by last name
SELECT first_name, last_name
FROM patients
ORDER BY last_name ASC;

-- question 5.2. Sorting data.List all visits sorted by the date of the visit, starting from the most recent
SELECT visit_id, visit_date
FROM visits
ORDER BY visit_date DESC;

-- question 6.1 Advance filtering.Retrieve all admissions where the primary diagnosis is "Stroke" and the discharge disposition is "Home"
SELECT admission_id, primary_diagnosis, discharge_disposition
FROM admissions
WHERE primary_diagnosis = 'Stroke' AND discharge_disposition = 'Home';

-- question 6.2 Advance filtering.Find providers who joined after 1995 and specialize in either Pediatrics or Cardiology
SELECT provider_id, first_name, provider_speciality, hire_date
FROM providers
WHERE hire_date > '1995-01-01' AND provider_speciality IN ('Pediatrics', 'Cardiology');

-- Bonus Challenge List all discharges where the patient was discharged home and the discharge date is within the first week of March 2018
SELECT discharge_id, patient_id, discharge_date, discharge_disposition
FROM discharges
WHERE discharge_disposition = 'Home' 
AND discharge_date BETWEEN '2018-03-01' AND '2018-03-07';











