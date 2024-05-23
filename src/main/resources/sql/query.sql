

CREATE TABLE users (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         firstname VARCHAR(255) not null ,
                         lastname VARCHAR(255) not null ,
                         email VARCHAR(255) unique not null,
                         password VARCHAR(255) not null ,
                         role VARCHAR(255)
);


CREATE TABLE doctors (
                        id INT AUTO_INCREMENT primary key,
                        name VARCHAR(255) not null,
                        bmdc VARCHAR(255) unique not null
);

CREATE TABLE patients (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         name VARCHAR(255) not null ,
                         phone VARCHAR(20) unique not null,
                         age VARCHAR(255) not null
);

CREATE TABLE generics (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         name VARCHAR(255) unique not null

);

CREATE TABLE vendors (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        name VARCHAR(255) not null
);


CREATE TABLE drugs (
                      id INT AUTO_INCREMENT PRIMARY KEY,
                      drug_name VARCHAR(255) not null ,
                      description TEXT,
                      generic_id INT,
                      vendor_id INT,
                      FOREIGN KEY (generic_id) REFERENCES generics(id),
                      FOREIGN KEY (vendor_id) REFERENCES vendors(id)
);

CREATE TABLE prescriptions (
                              id INT AUTO_INCREMENT PRIMARY KEY,
                              doctor_id INT,
                              patient_id INT,
                              location_id INT,
                              FOREIGN KEY (doctor_id) REFERENCES doctors(id),
                              FOREIGN KEY (patient_id) REFERENCES patients(id),
                              FOREIGN KEY (location_id) REFERENCES locations(id)
);



CREATE TABLE locations (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          location_name VARCHAR(255) unique not null ,
                          latitude DOUBLE unique not null ,
                          longitude DOUBLE unique not null
);




CREATE TABLE prescription_drugs (   id INT AUTO_INCREMENT PRIMARY KEY,
                                    prescription_id INT,
                                    drug_id INT,

                                   FOREIGN KEY (prescription_id) REFERENCES prescriptions(id),
                                   FOREIGN KEY (drug_id) REFERENCES drugs(id)
);




INSERT INTO locations (location_name, latitude, longitude) VALUES
                                             ('Gulshan-1', 23.7806615, 90.4112899),
                                             ('Banani', 23.7947552, 90.3954059),
                                             ('Dhanmondi', 23.7470303, 90.3655623),
                                             ('Mirpur-1', 23.7945624, 90.3435587),
                                             ('Uttara', 23.8766322, 90.3576884);




INSERT INTO generics (name) VALUES
                               ('Aceclofenac'),
                               ('Ambroxol-Hydrochloride'),
                               ('Amlodipine-Besylate'),
                               ('Amlodipine-Besylate-+-Atenolol'),
                               ('Amlodipine-+-Telmisartan'),
                               ('Amoxicillin-+-Clavulanic-Acid'),
                               ('Atorvastatin'),
                               ('Azithromycin'),
                               ('Baclofen'),
                               ('Bilastine'),
                               ('Bisoprolol'),
                               ('Butamirate-Citrate'),
                               ('Calcium-Carbonate-&-vitamin-D3'),
                               ('Calcium-(Coral-source)-+-Vitamin-D3'),
                               ('Calcium-Orotate'),
                               ('Carbonyl-Iron_Folic-Acid_Zinc-Sulphate'),
                               ('Cefepime');



INSERT INTO vendors (name) VALUES
                               ('ACI-Limited'),
                               ('ACME-Laboratories-Ltd'),
                               ('Ad-din-Pharmaceuticals-Ltd'),
                               ('Aexim-Pharmaceuticals-Ltd'),
                               ('Al-Madina-Pharmaceuticals-Ltd'),
                               ('Albion-Laboratories-Limited'),
                               ('Alco-Pharma-Ltd'),
                               ('Alien-Pharma'),
                               ('Alkad-Laboratories'),
                               ('Allied-Pharmaceuticals-Ltd'),
                               ('Ambee-Pharmaceuticals-Ltd'),
                               ('Amico-Laboratories-Ltd'),
                               ('Amulet-Pharmaceuticals-Ltd'),
                               ('APC-Pharma-Ltd');



INSERT INTO doctors (name, bmdc) VALUES
                                    ('Dr. Ashraful Islam', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000),
                                    ('Dr. Zahid Hossain', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000),
                                    ('Dr. Omar Ahmed', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000),
                                    ('Dr. Rafi Khan', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000),
                                    ('Dr. Anwar Ali', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000),
                                    ('Dr. Alam Rahman', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000),
                                    ('Dr. Shahid Karim', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000),
                                    ('Dr. Rubel Uddin', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000),
                                    ('Dr. Reza Miah', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000),
                                    ('Dr. Hasan Chowdhury', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000);

INSERT INTO patients (name, phone, age)
VALUES
    ('John Doe', '01234567890', '55'),
    ('Alice Smith', '09876543210','25'),
    ('Bob Johnson', '05551234567','36'),
    ('Emily Brown', '05559876543','88'),
    ('Michael Wilson', '09998887776','63'),
    ('Emma Lee', '01239874560','55'),
    ('William Taylor', '07894561230','40'),
    ('Olivia Martinez', '09517534680','52'),
    ('James Anderson', '04561237890','93'),
    ('Sophia Garcia', '03692581470','27'),
    ('Alexander Hernandez', '07539518520','45'),
    ('Mia Lopez', '03216549870','27'),
    ('Ethan Perez', '06543219870','33'),
    ('Charlotte Gonzalez', '02589631470','45'),
    ('Daniel Ramirez', '07896541230','60'),
    ('Amelia Torres', '09638527410','70'),
    ('Matthew Flores', '01472583690','90'),
    ('Harper Diaz', '01593578520','90'),
    ('Henry Rivera', '03579514560','61'),
    ('Ava Cruz', '08529637410','99');





INSERT INTO drugs (drug_name, description, vendor_id, generic_id) VALUES
                                                                     ('Indever', 'n/a', 1, 1),
                                                                     ('Abetis', 'n/a', 1, 1),
                                                                     ('Feglo-FZ', 'n/a', 1, 1),
                                                                     ('Cora-DX', 'n/a', 1, 1),
                                                                     ('Acical-D', 'n/a', 2, 2),
                                                                     ('Reversair', 'n/a', 2, 2),
                                                                     ('Xeldrin', 'n/a', 2, 2),
                                                                     ('Artica', 'n/a', 3, 3),
                                                                     ('Hexisol', 'n/a', 3, 3),
                                                                     ('Paricel', 'n/a', 3, 3),
                                                                     ('Gabarol-CR', 'n/a', 4, 4),
                                                                     ('Atasin', 'n/a', 4, 4),
                                                                     ('Micoral-Gel', 'n/a', 4, 4);


INSERT INTO prescriptions (doctor_id, patient_id, location_id)
VALUES
    (1, 1, 1),
    (1, 2, 1),
    (1, 3, 1),
    (2, 5, 2),
    (2, 6, 2),
    (3, 10, 2),
    (4, 8, 3),
    (4, 4, 3),
    (5, 11, 3),
    (5, 8, 3),
    (6, 12, 3),
    (7, 14, 4),
    (7, 15, 4),
    (8, 7, 5),
    (8, 10, 5),
    (9, 18, 4),
    (9, 19, 4);

INSERT INTO prescription_drugs (prescription_id, drug_id) VALUES
                                                              (1, 1),
                                                              (1, 2),
                                                              (1, 3),
                                                              (1, 4),
                                                              (2, 5),
                                                              (2, 6),
                                                              (2, 7),
                                                              (2, 8),
                                                              (3, 9),
                                                              (3, 10),
                                                              (3, 11),
                                                              (3, 12),
                                                              (3, 13),
                                                              (4, 1),
                                                              (4, 2),
                                                              (4, 3),
                                                              (4, 4),
                                                              (5, 5),
                                                              (5, 6),
                                                              (5, 7),
                                                              (5, 8),
                                                              (6, 9),
                                                              (6, 10),
                                                              (6, 11),
                                                              (6, 12),
                                                              (7, 13),
                                                              (7, 1),
                                                              (7, 2),
                                                              (8, 3),
                                                              (8, 4),
                                                              (8, 5),
                                                              (9, 6),
                                                              (9, 7),
                                                              (9, 8),
                                                              (10, 9),
                                                              (10, 10),
                                                              (10, 11),
                                                              (11, 12),
                                                              (11, 13),
                                                              (11, 1),
                                                              (12, 2),
                                                              (12, 3),
                                                              (13, 4),
                                                              (13, 5),
                                                              (13, 6),
                                                              (14, 7),
                                                              (14, 8),
                                                              (14, 9),
                                                              (14, 10);





SELECT DISTINCT  d.name, d.bmdc
FROM prescriptions p
         JOIN locations l ON p.location_id = l.id
         JOIN doctors d ON p.doctor_id = d.bmdc
WHERE l.location_name = 'Banani';



/*    @Query("SELECT COUNT(p) FROM Prescription p JOIN p.drugs d JOIN p.location l WHERE d.drugName LIKE %:drugName% AND l.locationName LIKE %:locationName%")
    Long countPrescriptionsByDrugNameAndLocationName(@Param("drugName") String drugName, @Param("locationName") String locationName);*/
