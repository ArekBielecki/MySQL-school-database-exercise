CREATE DATABASE IF NOT EXISTS school;
USE school;

CREATE TABLE `school`(
`school_id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
`school_name` varchar(40) NOT NULL,
`school_adress` varchar(40) NOT NULL
);

CREATE TABLE `class`(
`class_id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
`class_name` ENUM('1A', '1B', '2A', '2B', '3A', '3B') NOT NULL UNIQUE,
`school_id` int NOT NULL
);
ALTER TABLE `class` AUTO_INCREMENT = 1;

CREATE TABLE `teacher`(
`teacher_id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
`first_name` varchar(16) NOT NULL,
`last_name` varchar(16) NOT NULL,
`school_id` int NOT NULL
);

CREATE TABLE `teacher_class`(
`class_id` int NOT NULL UNIQUE,
`teacher_id` int NOT NULL UNIQUE
);

CREATE TABLE `subject`(
`subject_id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
`subject_name` varchar(16) NOT NULL
);

CREATE TABLE `teacher_subject`(
`teacher_subject_id` int NOT NULL UNIQUE AUTO_INCREMENT,
`subject_id` int NOT NULL,
`teacher_id` int NOT NULL
);

CREATE TABLE `student`(
`student_id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
`first_name` varchar(16) NOT NULL,
`last_name` varchar(16) NOT NULL,
`class_id` int NOT NULL
);

CREATE TABLE `grade_book`(
`grade_book_id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
`student_id` int NOT NULL,
`subject_id` int NOT NULL,
`grade_id` int NOT NULL,
`grade_description` varchar(256)
);

CREATE TABLE `grades`(
`grade_id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
`grade` ENUM('1', '2', '3', '4', '5', '6') NOT NULL UNIQUE
);

CREATE TABLE `time_schedule`(
`time_schedule_id` int NOT NULL UNIQUE AUTO_INCREMENT,
`day` ENUM('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday') NOT NULL,
`hour` ENUM('8', '9', '10', '11', '12', '13', '14') NOT NULL
);

CREATE TABLE `classroom`(
`classroom_id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
`classroom_number` int NOT NULL,
`classroom_name` varchar(20)
)AUTO_INCREMENT = 100;


CREATE TABLE `timetable`(
`time_schedule_id` int NOT NULL,
`classroom_id` int NOT NULL,
`teacher_subject_id` int NOT NULL,
`class_id` int NOT NULL
);

ALTER TABLE `time_schedule` ADD PRIMARY KEY(`day`, `hour`);

ALTER TABLE `class` ADD FOREIGN KEY(`school_id`) REFERENCES `school`(`school_id`);

ALTER TABLE `teacher` ADD FOREIGN KEY(`school_id`) REFERENCES `school`(`school_id`);

ALTER TABLE `teacher_class` ADD FOREIGN KEY(`class_id`) REFERENCES `class`(`class_id`);
ALTER TABLE `teacher_class` ADD FOREIGN KEY(`teacher_id`) REFERENCES `teacher`(`teacher_id`);
ALTER TABLE `teacher_class` ADD PRIMARY KEY(`class_id`, `teacher_id`);

ALTER TABLE `teacher_subject` ADD FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);
ALTER TABLE `teacher_subject` ADD FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);
ALTER TABLE `teacher_subject` ADD PRIMARY KEY (`subject_id`,`teacher_id`);


ALTER TABLE `student` ADD FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);

ALTER TABLE `grade_book` ADD FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);
ALTER TABLE `grade_book` ADD FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);
ALTER TABLE `grade_book` ADD FOREIGN KEY (`grade_id`) REFERENCES `grades` (`grade_id`);

ALTER TABLE `timetable` ADD FOREIGN KEY (`time_schedule_id`) REFERENCES `time_schedule` (`time_schedule_id`);
ALTER TABLE `timetable` ADD FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`classroom_id`);
ALTER TABLE `timetable` ADD FOREIGN KEY (`teacher_subject_id`) REFERENCES `teacher_subject` (`teacher_subject_id`);
ALTER TABLE `timetable` ADD FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);
ALTER TABLE `timetable` ADD PRIMARY KEY (`time_schedule_id`,`classroom_id`,`teacher_subject_id`,`class_id`);