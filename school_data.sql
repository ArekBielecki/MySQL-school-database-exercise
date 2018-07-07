USE school;

-- SCHOOL DATA
INSERT INTO school(school_name, school_adress) VALUES ('Beahan, McKenzie and Upton School', '693 Merry Parkway');

-- TEACHER DATA
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Rosemonde', 'Crookall', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Morton', 'Reuble', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Abigale', 'Munsey', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Morley', 'Seatter', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Barney', 'Rawlison', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Mellisent', 'Fowlds', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Oona', 'Parysowna', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Elisabeth', 'Chess', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Ddene', 'Chedgey', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Anstice', 'Steels', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Bryna', 'Bellerby', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Aridatha', 'Tesmond', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Shanon', 'Biddlestone', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Quintin', 'Thorndycraft', 1);
INSERT INTO teacher(first_name, last_name, school_id) VALUES ('Moira', 'Rantoul', 1);

-- CLASS DATA
INSERT INTO class(class_name, school_id) VALUES ('1A', 1);
INSERT INTO class(class_name, school_id) VALUES ('1B', 1);
INSERT INTO class(class_name, school_id) VALUES ('2A', 1);
INSERT INTO class(class_name, school_id) VALUES ('2B', 1);
INSERT INTO class(class_name, school_id) VALUES ('3A', 1);
INSERT INTO class(class_name, school_id) VALUES ('3B', 1);

-- HEAD TEACHER AND SUBORDINATED CLASS CONNECTION DATA
INSERT INTO teacher_class VALUES(1, 4);
INSERT INTO teacher_class VALUES(2, 12);
INSERT INTO teacher_class VALUES(3, 7);
INSERT INTO teacher_class VALUES(4, 14);
INSERT INTO teacher_class VALUES(5, 6);
INSERT INTO teacher_class VALUES(6, 2);

-- GRADE DATA
INSERT INTO grades(grade_id, grade) VALUES(1, 1);
INSERT INTO grades(grade_id, grade) VALUES(2, 2);
INSERT INTO grades(grade_id, grade) VALUES(3, 3);
INSERT INTO grades(grade_id, grade) VALUES(4, 4);
INSERT INTO grades(grade_id, grade) VALUES(5, 5);
INSERT INTO grades(grade_id, grade) VALUES(6, 6);

-- SUBJECT DATA
INSERT INTO subject(subject_name) VALUES ('Polish Language');
INSERT INTO subject(subject_name) VALUES ('English Language');
INSERT INTO subject(subject_name) VALUES ('German Language');
INSERT INTO subject(subject_name) VALUES ('History');
INSERT INTO subject(subject_name) VALUES ('Geography');
INSERT INTO subject(subject_name) VALUES ('Biology');
INSERT INTO subject(subject_name) VALUES ('Mathematics');
INSERT INTO subject(subject_name) VALUES ('Physics');
INSERT INTO subject(subject_name) VALUES ('Sports');
INSERT INTO subject(subject_name) VALUES ('IT');

-- TEACHER AND SUBJECT CONNECTION DATA
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (9, 2);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (2, 12);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (8, 8);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (2, 5);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (1, 14);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (2, 4);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (1, 6);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (2, 14);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (4, 2);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (10, 10);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (1, 2);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (3, 13);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (10, 7);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (2, 11);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (10, 2);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (6, 10);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (3, 5);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (6, 6);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (8, 11);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (10, 1);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (10, 15);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (9, 7);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (2, 1);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (5, 13);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (7, 7);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (6, 15);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (9, 4);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (1, 5);
INSERT INTO teacher_subject (subject_id, teacher_id) VALUES (9, 8);

-- STUDENT DATA

-- CLASS 1A
INSERT INTO student (first_name, last_name, class_id) VALUES ('Ashleigh', 'Scorer', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Augustin', 'O''Sheeryne', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Worthington', 'Camelli', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Gusella', 'Give', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Shelbi', 'Franc', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Cristi', 'McClaughlin', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Arlena', 'Simond', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Goldie', 'Wildsmith', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Wilfred', 'Joslow', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Micah', 'Giorgetti', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Ola', 'Broad', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Ryun', 'Mace', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Danny', 'Meach', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Tabbitha', 'Earwaker', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Oby', 'Mogford', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Rutledge', 'Marmon', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Mariann', 'McIndoe', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('King', 'Brim', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Gay', 'Bordman', 1);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Nestor', 'Whordley', 1);

-- CLASS 1B
INSERT INTO student (first_name, last_name, class_id) VALUES ('Baird', 'Vayro', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Gardy', 'Szach', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Rickey', 'Carty', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Lindie', 'Giovannilli', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Mil', 'Magson', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Westbrook', 'Killimister', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Hertha', 'Branchet', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Hatty', 'Halladay', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Lind', 'Brotherick', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Carlee', 'Springthorpe', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Tedie', 'Isakov', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Florella', 'Lipson', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Zared', 'Kuhndel', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Valentia', 'Ahern', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Cleve', 'Scotfurth', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Caesar', 'Blodget', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Emanuele', 'Kitchinham', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Tripp', 'Murdy', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Hyacintha', 'Knapton', 2);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Cam', 'Dawidowitsch', 2);

-- CLASS 2A
INSERT INTO student (first_name, last_name, class_id) VALUES ('Baryram', 'Crownshaw', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Currie', 'Kleis', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Walliw', 'Burk', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Elisabet', 'Ferneyhough', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Hendrik', 'Cuttings', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Alric', 'Belsher', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Clayton', 'Izakovitz', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Guthrie', 'Sperring', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Adolf', 'Hannabuss', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Aubrey', 'Witling', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Tadeas', 'Willgoose', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Jinny', 'Kleuer', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Shandee', 'Brasted', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Daphna', 'Gavin', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Matteo', 'Bruno', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Toinette', 'Troni', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Odelle', 'Youel', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Joanna', 'Hackwell', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Leann', 'Chorley', 3);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Winifield', 'Cahan', 3);

-- CLASS 2B
INSERT INTO student (first_name, last_name, class_id) VALUES ('Roderic', 'Tysack', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Case', 'Whannel', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Eugen', 'Cookley', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Sayre', 'Lucock', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Annelise', 'Baskwell', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Florance', 'Masedon', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Krystalle', 'Farnie', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Susette', 'Riseam', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Robbie', 'Hallet', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Tanney', 'Hagart', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Consuela', 'Dakhno', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Millard', 'Duckerin', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Teirtza', 'Grinsdale', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Di', 'McCowen', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Ginevra', 'Selbie', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Dave', 'Ramstead', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Knox', 'Glanert', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Raine', 'Runnett', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Dniren', 'MacNeely', 4);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Rosamond', 'Shermore', 4);

-- CLASS 3A
INSERT INTO student (first_name, last_name, class_id) VALUES ('Kaia', 'Pawlowicz', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Royal', 'Roper', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Micheline', 'Skermer', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Roxie', 'Andrzejewski', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Matthus', 'Macveigh', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Pierce', 'Walwood', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Roman', 'Alelsandrowicz', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Marline', 'Brookton', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Nehemiah', 'Leads', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Rebecka', 'Legier', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Jacki', 'Mathelon', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Wildon', 'Phillip', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Kevyn', 'Capstake', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Devondra', 'Condie', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Morena', 'Peyro', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Zorah', 'Robuchon', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Tania', 'Philler', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Gretna', 'Alesi', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Smitty', 'Lowndsborough', 5);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Jehanna', 'Kettoe', 5);

-- CLASS 3B
INSERT INTO student (first_name, last_name, class_id) VALUES ('Leeland', 'Smythe', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Milty', 'Gaynesford', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Bridget', 'Du Barry', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Mike', 'Bardsley', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Rustin', 'Dreakin', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Cori', 'Dyhouse', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Inessa', 'Leadley', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Rikki', 'Barrasse', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Dag', 'Danielou', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Monroe', 'Dietmar', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Lin', 'Greville', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Judas', 'Cheng', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Byram', 'Hake', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Bettina', 'Goodanew', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Phelia', 'Limbert', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Nanette', 'Belf', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Olympie', 'Wotherspoon', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Brett', 'Brimman', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Giulio', 'Gurling', 6);
INSERT INTO student (first_name, last_name, class_id) VALUES ('Jori', 'Scotford', 6);

-- TIME SCHEDULE DATA

-- MONDAY
INSERT INTO time_schedule(day, hour) VALUES('Monday', '8');
INSERT INTO time_schedule(day, hour) VALUES('Monday', '9');
INSERT INTO time_schedule(day, hour) VALUES('Monday', '10');
INSERT INTO time_schedule(day, hour) VALUES('Monday', '11');
INSERT INTO time_schedule(day, hour) VALUES('Monday', '12');
INSERT INTO time_schedule(day, hour) VALUES('Monday', '13');
INSERT INTO time_schedule(day, hour) VALUES('Monday', '14');

-- TUESDAY
INSERT INTO time_schedule(day, hour) VALUES('Tuesday', '8');
INSERT INTO time_schedule(day, hour) VALUES('Tuesday', '9');
INSERT INTO time_schedule(day, hour) VALUES('Tuesday', '10');
INSERT INTO time_schedule(day, hour) VALUES('Tuesday', '11');
INSERT INTO time_schedule(day, hour) VALUES('Tuesday', '12');
INSERT INTO time_schedule(day, hour) VALUES('Tuesday', '13');
INSERT INTO time_schedule(day, hour) VALUES('Tuesday', '14');

-- WEDNESDAY
INSERT INTO time_schedule(day, hour) VALUES('Wednesday', '8');
INSERT INTO time_schedule(day, hour) VALUES('Wednesday', '9');
INSERT INTO time_schedule(day, hour) VALUES('Wednesday', '10');
INSERT INTO time_schedule(day, hour) VALUES('Wednesday', '11');
INSERT INTO time_schedule(day, hour) VALUES('Wednesday', '12');
INSERT INTO time_schedule(day, hour) VALUES('Wednesday', '13');
INSERT INTO time_schedule(day, hour) VALUES('Wednesday', '14');

-- THURSDAY
INSERT INTO time_schedule(day, hour) VALUES('Thursday', '8');
INSERT INTO time_schedule(day, hour) VALUES('Thursday', '9');
INSERT INTO time_schedule(day, hour) VALUES('Thursday', '10');
INSERT INTO time_schedule(day, hour) VALUES('Thursday', '11');
INSERT INTO time_schedule(day, hour) VALUES('Thursday', '12');
INSERT INTO time_schedule(day, hour) VALUES('Thursday', '13');
INSERT INTO time_schedule(day, hour) VALUES('Thursday', '14');

-- FRIDAY
INSERT INTO time_schedule(day, hour) VALUES('Friday', '8');
INSERT INTO time_schedule(day, hour) VALUES('Friday', '9');
INSERT INTO time_schedule(day, hour) VALUES('Friday', '10');
INSERT INTO time_schedule(day, hour) VALUES('Friday', '11');
INSERT INTO time_schedule(day, hour) VALUES('Friday', '12');
INSERT INTO time_schedule(day, hour) VALUES('Friday', '13');
INSERT INTO time_schedule(day, hour) VALUES('Friday', '14');

-- CLASSROOM DATA
INSERT INTO classroom(classroom_number, classroom_name) VALUES(100, 'Language Classroom');
INSERT INTO classroom(classroom_number, classroom_name) VALUES(101, 'Science Classroom');
INSERT INTO classroom(classroom_number, classroom_name) VALUES(102, 'Biology Classroom');
INSERT INTO classroom(classroom_number, classroom_name) VALUES(103, 'History Classroom');
INSERT INTO classroom(classroom_number, classroom_name) VALUES(104, 'Geography Classroom');
INSERT INTO classroom(classroom_number, classroom_name) VALUES(105, 'Computer Workshop');
INSERT INTO classroom(classroom_number, classroom_name) VALUES(106, 'Sports Hall');
