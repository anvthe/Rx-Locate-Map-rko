

CREATE TABLE users (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         firstname VARCHAR(255) not null ,
                         lastname VARCHAR(255) not null ,
                         username VARCHAR(255) unique not null,
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


CREATE TABLE divisions (
                           id INT AUTO_INCREMENT PRIMARY KEY,
                           name VARCHAR(255) unique not null ,
                           lat DOUBLE unique not null ,
                           lng DOUBLE unique not null

);


CREATE TABLE locations (
                           id INT AUTO_INCREMENT PRIMARY KEY,
                           location_name VARCHAR(255) unique not null ,
                           latitude DOUBLE unique not null ,
                           longitude DOUBLE unique not null,
                           division_id INT,
                           FOREIGN KEY (division_id) REFERENCES divisions(id)
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





CREATE TABLE prescription_drugs (   id INT AUTO_INCREMENT PRIMARY KEY,
                                    prescription_id INT,
                                    drug_id INT,

                                   FOREIGN KEY (prescription_id) REFERENCES prescriptions(id),
                                   FOREIGN KEY (drug_id) REFERENCES drugs(id)
);




INSERT INTO locations (location_name, latitude, longitude, division_id) VALUES
                                             ('Gulshan-1', 23.7806615, 90.4112899, 1),
                                             ('Banani', 23.7947552, 90.3954059, 1),
                                             ('Dhanmondi', 23.7470303, 90.3655623, 1),
                                             ('Mirpur-1', 23.7945624, 90.3435587, 1),
                                             ('Uttara', 23.8766322, 90.3576884, 1),
                                             ('Shahbag', 23.7348, 90.3929, 1),
                                             ('Mirpur', 23.8223, 90.3654, 1),
                                             ('Mohammadpur', 23.7639, 90.3610, 1),
                                             ('Farmgate', 23.7537, 90.3844, 1),
                                             ('Motijheel', 23.7345, 90.4146, 1),
                                             ('Karwan Bazar', 23.7503, 90.4005, 1),
                                             ('New Market', 23.7303, 90.4081, 1),
                                             ('Science Laboratory', 23.7368, 90.3779, 1),
                                             ('Lalbagh', 23.7115, 90.4088, 1),
                                             ('Badda', 23.7876, 90.4236, 1),
                                             ('Rampura', 23.7622, 90.4173, 1),
                                             ('Mohakhali', 23.7799, 90.4066, 1),
                                             ('Khilgaon', 23.7384, 90.4334, 1),
                                             ('Pallabi', 23.8313, 90.3632, 1),
                                             ('Banasree', 23.7740, 90.4335, 1),
                                             ('Baridhara', 23.8037, 90.4231, 1),
                                             ('Niketon', 23.7974, 90.4043, 1),
                                             ('Wari', 23.7154, 90.4035, 1),
                                             ('Jatrabari', 23.7191, 90.4557, 1),
                                             ('Mirpur DOHS', 23.8213, 90.3683, 1),
                                             ('Baily Road', 23.7294, 90.4023, 1),
                                             ('Mohakhali DOHS', 23.7993, 90.4082, 1),
                                             ('Shyamoli', 23.7607, 90.3714, 1 ),
                                             ('Banglamotor', 23.7486, 90.3852, 1),
                                             ('Malibagh', 23.7484, 90.4290, 1),
                                             ('Rampura Bridge', 23.7593, 90.4272, 1),
                                             ('Hazaribagh', 23.7247, 90.4167, 1),
                                             ('Azimpur', 23.7211, 90.3880, 1),
                                             ('Tejgaon', 23.7617, 90.4064, 1),
                                             ('Kamalapur', 23.7313, 90.4164, 1),
                                             ('Agargaon', 23.7753, 90.3715, 1),
                                             ('Mirpur-10', 23.8129, 90.3630, 1),
                                             ('Mirpur-2', 23.8052, 90.3656, 1),
                                             ('Mohammadpur Town Hall', 23.7678, 90.3606, 1),
                                             ('Mohammadpur Bus Stand', 23.7651, 90.3624, 1),
                                             ('Kalabagan', 23.7494, 90.3748, 1),
                                             ('Shantinagar', 23.7311, 90.4178, 1),
                                             ('Hatirpool', 23.7443, 90.3926, 1),
                                             ('Mohakhali Bus Stand', 23.7889, 90.4080, 1),
                                             ('Bongshal', 23.7151, 90.4093, 1),
                                             ('Gulistan', 23.7226, 90.4165, 1),
                                             ('Malibagh Railgate', 23.7523, 90.4292, 1),
                                             ('Malibagh Mor', 23.7546, 90.4228, 1),
                                             ('Kuril Biswa Road', 23.8056, 90.4254, 1),
('Dhaka', 23.7115253, 90.4111451, 1),
('Faridpur', 23.6070822, 89.8429406, 1),
('Gazipur', 24.0022858, 90.4264283, 1),
('Gopalganj', 23.0050857, 89.8266059, 1),
('Jamalpur', 24.937533, 89.937775, 7),
('Kishoreganj', 24.444937, 90.776575, 1),
('Madaripur', 23.164102, 90.1896805, 1),
('Manikganj', 23.8644, 90.0047, 1),
('Munshiganj', 23.5422, 90.5305, 1),
('Mymensingh', 24.7471, 90.4203, 7),
('Narayanganj', 23.63366, 90.496482, 1),
('Narsingdi', 23.932233, 90.71541, 1),
('Netrokona', 24.870955, 90.727887, 7),
('Rajbari', 23.7574305, 89.6444665, 1),
('Shariatpur', 23.2423, 90.4348, 1),
('Sherpur', 25.0204933, 90.0152966, 7),
('Tangail', 24.2513, 89.9167, 1),
('Bogura', 24.8465228, 89.377755, 5),
('Joypurhat', 25.0968, 89.0227, 5),
('Naogaon', 24.7936, 88.9318, 5),
('Natore', 24.420556, 89.000282, 5),
('Nawabganj', 24.5965034, 88.2775122, 1),
('Pabna', 23.998524, 89.233645, 5),
('Rajshahi', 24.3745, 88.6042, 5),
('Sirajgonj', 24.4533978, 89.7006815, 5),
('Dinajpur', 25.6217061, 88.6354504, 6),
('Gaibandha', 25.328751, 89.528088, 6),
('Kurigram', 25.805445, 89.636174, 6),
('Lalmonirhat', 25.9923, 89.2847, 6),
('Nilphamari', 25.931794, 88.856006, 6),
('Panchagarh', 26.3411, 88.5541606, 6),
('Rangpur', 25.7558096, 89.244462, 6),
('Thakurgaon', 26.0336945, 88.4616834, 6),
('Barguna', 22.0953, 90.1121, 4),
('Barishal', 22.7010, 90.3535, 4),
('Bhola', 22.685923, 90.648179, 4),
('Jhalokati', 22.6406, 90.1987, 4),
('Patuakhali', 22.3596316, 90.3298712, 4),
('Pirojpur', 22.5841, 89.9720, 4),
('Bandarban', 22.1953275, 92.2183773, 2),
('Brahmanbaria', 23.9570904, 91.1119286, 2),
('Chandpur', 23.2332585, 90.6712912, 2),
('Chattogram', 22.335109, 91.834073, 2),
('Cumilla', 23.4682747, 91.1788135, 2),
('Cox''s Bazar', 21.4272, 92.0058, 2),
('Feni', 23.0159, 91.3976, 2),
('Khagrachari', 23.119285, 91.984663, 2),
('Lakshmipur', 22.942477, 90.841184, 2),
('Noakhali', 22.869563, 91.099398, 2),
('Rangamati', 22.7324, 92.2985, 2),
('Habiganj', 24.374945, 91.41553, 8),
('Maulvibazar', 24.482934, 91.777417, 8),
('Sunamganj', 25.0658042, 91.3950115, 8),
('Sylhet', 24.8897956, 91.8697894, 8),
('Bagerhat', 22.651568, 89.785938, 3),
('Chuadanga', 23.6401961, 88.841841, 3),
('Jashore', 23.16643, 89.2081126, 3),
('Jhenaidah', 23.5448176, 89.1539213, 3),
('Khulna', 22.815774, 89.568679, 3),
('Kushtia', 23.901258, 89.120482,3 ),
('Magura', 23.487337, 89.419956, 3),
('Meherpur', 23.762213, 88.631821, 3),
('Narail', 23.172534, 89.512672, 3),
('Satkhira', 22.7185, 89.0705, 3);


INSERT INTO divisions (name, lat, lng) VALUES ('DHAKA', 23.80752056124966, 90.41590901066833),
                                              ('CHITTAGONG', 22.38023381039401, 91.82967658593265),
                                              ('KHULNA', 22.839654595743053, 89.5408447098732),
                                              ('BARISHAL', 22.71399526448547, 90.34897572477993),
                                              ('RAJSHAHI', 24.377553558066847, 88.6037560363994),
                                              ('RANGPUR', 25.751651725195643, 89.26200855373632),
                                              ('MYMENSINGH', 24.746690537025774, 90.41863531617815),
                                              ('SYLHET', 24.90667560424398, 91.86172139418804);




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
                                                                     ('Micoral-Gel', 'n/a', 4, 4),
                                                                     ('Paricel', 'n/a', 1, 1),
                                                                     ('Abecab', 'n/a', 1, 2),
                                                                     ('Diasulin', 'n/a', 1, 3),
                                                                     ('Micoral', 'n/a', 1, 4),
                                                                     ('Abetis', 'n/a', 1, 5),
                                                                     ('Monas', 'n/a', 2, 6),
                                                                     ('Maxima', 'n/a', 2, 7),
                                                                     ('Don-A', 'n/a', 2, 8),
                                                                     ('PPI', 'n/a', 2, 9),
                                                                     ('Salflu','n/a', 2, 10),
                                                                     ('Napa Extra', 'n/a', 3, 11),
                                                                     ('Bizoran', 'n/a', 3, 2),
                                                                     ('Atova', 'n/a', 3, 12),
                                                                     ('Acifix', 'n/a', 3, 1),
                                                                     ('Napa', 'n/a', 3, 1),
                                                                     ('Seclo', 'n/a', 4, 9),
                                                                     ('Zimax', 'n/a', 4, 3),
                                                                     ('Ceevit', 'n/a', 4, 4),
                                                                     ('Alatrol', 'n/a', 4, 5),
                                                                     ('Ciprocin', 'n/a', 4, 6),
                                                                     ('Maxpro', 'n/a', 5, 7),
                                                                     ('Algin', 'n/a', 5, 7),
                                                                     ('Thyrox', 'n/a', 5, 8),
                                                                     ('Fenadin', 'n/a', 5, 9),
                                                                     ('Napa', 'n/a', 5, 9),
                                                                     ('Furoclav', 'n/a', 5, 1);


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
    (6, 12, 2),
    (7, 14, 4),
    (7, 15, 4),
    (8, 7, 5),
    (8, 10, 5),
    (9, 18, 4),
    (9, 19, 4);

INSERT INTO prescription_drugs (prescription_id, drug_id) VALUES
                                                              (1, '49'),
                                                              (1, '42'),
                                                              (1, '43'),
                                                              (1, '44'),
                                                              (2, '45'),
                                                              (2, '46'),
                                                              (2, '47'),
                                                              (2, '48'),
                                                              (3, '49'),
                                                              (3, '40'),
                                                              (3, '41'),
                                                              (3, '42'),
                                                              (3, '43'),
                                                              (4, '41'),
                                                              (4, '42'),
                                                              (4, '53'),
                                                              (4, '54'),
                                                              (5, '55'),
                                                              (5, '56'),
                                                              (5, '57'),
                                                              (5, '68'),
                                                              (6, '69'),
                                                              (6, '40'),
                                                              (6, '41'),
                                                              (6, '42'),
                                                              (7, '39'),
                                                              (7, '41'),
                                                              (7, '42'),
                                                              (8, '43'),
                                                              (8, '44'),
                                                              (8, '55'),
                                                              (9, '66'),
                                                              (9, '67'),
                                                              (9, '68'),
                                                              (10, '59'),
                                                              (10, '40'),
                                                              (10, '61'),
                                                              (11, '52'),
                                                              (11, '53'),
                                                              (11, '61'),
                                                              (12, '62'),
                                                              (12, '63'),
                                                              (13, '54'),
                                                              (13, '45'),
                                                              (13, '56'),
                                                              (14, '57'),
                                                              (14, '58'),
                                                              (14, '49'),
                                                              (14, '40');


INSERT INTO doctors (name, bmdc) VALUES
                                     ('Dr. Ashraful Islam', 1022),
                                     ('Dr. Nafis Rahman', 1023),
                                     ('Dr. Ayesha Siddiqui', 1024),
                                     ('Dr. Omar Farooq', 1025),
                                     ('Dr. Rehana Begum', 1026),
                                     ('Dr. Tahmid Karim', 1027),
                                     ('Dr. Nusrat Jahan', 1028),
                                     ('Dr. Hasan Mahmud', 1029),
                                     ('Dr. Kamal Ahmed', 1030),
                                     ('Dr. Saima Chowdhury', 1031),
                                     ('Dr. Ashraful Islam', 1032),
                                     ('Dr. Nafis Rahma', 1033),
                                     ('Dr. Ayesha Siddiqui', 1034),
                                     ('Dr. Omar Farooq', 1035),
                                     ('Dr. Rehana Begum', 1036),
                                     ('Dr. Tahmid Karim', 1037),
                                     ('Dr. Nusrat Jahan', 1038),
                                     ('Dr. Hasan Mahmud', 1039),
                                     ('Dr. Kamal Ahmed', 1040),
                                     ('Dr. Saima Chowdhury', 1041),
                                     ('Dr. Ashraful Islam', 1042),
                                     ('Dr. Nafis Rahman', 1043),
                                     ('Dr. Ayesha Siddiqu', 1044),
                                     ('Dr. Omar Farooq', 1045),
                                     ('Dr. Rehana Begum', 1046),
                                     ('Dr. Tahmid Karim', 1047),
                                     ('Dr. Nusrat Jahan', 1048),
                                     ('Dr. Hasan Mahmud', 1049),
                                     ('Dr. Kamal Ahmed', 1050);





SELECT DISTINCT  d.name, d.bmdc
FROM prescriptions p
         JOIN locations l ON p.location_id = l.id
         JOIN doctors d ON p.doctor_id = d.bmdc
WHERE l.location_name = 'Banani';



/*    @Query("SELECT COUNT(p) FROM Prescription p JOIN p.drugs d JOIN p.location l WHERE d.drugName LIKE %:drugName% AND l.locationName LIKE %:locationName%")
    Long countPrescriptionsByDrugNameAndLocationName(@Param("drugName") String drugName, @Param("locationName") String locationName);*/
