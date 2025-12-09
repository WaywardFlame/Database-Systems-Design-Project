-- Disable foreign key checks to avoid errors during creation and data insertion
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- 1. Create auth_user Table
-- ----------------------------
CREATE TABLE IF NOT EXISTS `auth_user` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `password` VARCHAR(128) NOT NULL,
    `last_login` DATETIME NULL,
    `is_superuser` TINYINT(1) NOT NULL,
    `username` VARCHAR(150) NOT NULL UNIQUE,
    `last_name` VARCHAR(150) NOT NULL,
    `email` VARCHAR(254) NOT NULL UNIQUE,
    `is_staff` TINYINT(1) NOT NULL,
    `is_active` TINYINT(1) NOT NULL,
    `date_joined` DATETIME NOT NULL,
    `first_name` VARCHAR(150) NOT NULL
);

-- ----------------------------
-- 2. Insert Data into auth_user
-- ----------------------------
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `first_name`) VALUES
(1, 'Password123', '2024-11-07 19:25:23.851025', 1, 'MaerBelew', '', 'anthonydavidsparks@gmail.com', 1, 1, '2024-11-07 15:57:20.062761', ''),
(164, 'Password123', NULL, 0, 'emma_brown', 'Brown', 'emma.brown@school.com', 0, 1, '2024-11-07 16:47:29.369620', 'Emma'),
(165, 'Password123', NULL, 0, 'liam_davis', 'Davis', 'liam.davis@school.com', 0, 1, '2024-11-07 16:47:29.549482', 'Liam'),
(166, 'Password123', NULL, 0, 'olivia_smith', 'Smith', 'olivia.smith@school.com', 0, 1, '2024-11-07 16:47:29.723133', 'Olivia'),
(167, 'Password123', NULL, 0, 'noah_johnson', 'Johnson', 'noah.johnson@school.com', 0, 1, '2024-11-07 16:47:29.899412', 'Noah'),
(168, 'Password123', NULL, 0, 'ava_martinez', 'Martinez', 'ava.martinez@school.com', 0, 1, '2024-11-07 16:47:30.074350', 'Ava'),
(169, 'Password123', NULL, 0, 'james_wilson', 'Wilson', 'james.wilson@school.com', 0, 1, '2024-11-07 16:47:30.252596', 'James'),
(170, 'Password123', NULL, 0, 'mia_taylor', 'Taylor', 'mia.taylor@school.com', 0, 1, '2024-11-07 16:47:30.433329', 'Mia'),
(171, 'Password123', NULL, 0, 'william_clark', 'Clark', 'william.clark@school.com', 0, 1, '2024-11-07 16:47:30.607661', 'William'),
(172, 'Password123', NULL, 0, 'sophia_lee', 'Lee', 'sophia.lee@school.com', 0, 1, '2024-11-07 16:47:30.783399', 'Sophia'),
(173, 'Password123', NULL, 0, 'benjamin_hall', 'Hall', 'benjamin.hall@school.com', 0, 1, '2024-11-07 16:47:30.959094', 'Benjamin'),
(174, 'Password123', NULL, 0, 'amelia_white', 'White', 'amelia.white@school.com', 0, 1, '2024-11-07 16:47:31.138300', 'Amelia'),
(175, 'Password123', NULL, 0, 'logan_green', 'Green', 'logan.green@school.com', 0, 1, '2024-11-07 16:47:31.315683', 'Logan'),
(176, 'Password123', NULL, 0, 'ella_baker', 'Baker', 'ella.baker@school.com', 0, 1, '2024-11-07 16:47:31.499413', 'Ella'),
(177, 'Password123', NULL, 0, 'lucas_wright', 'Wright', 'lucas.wright@school.com', 0, 1, '2024-11-07 16:47:31.673360', 'Lucas'),
(178, 'Password123', NULL, 0, 'harper_james', 'James', 'harper.james@school.com', 0, 1, '2024-11-07 16:47:31.855366', 'Harper'),
(179, 'Password123', NULL, 0, 'jackson_adams', 'Adams', 'jackson.adams@school.com', 0, 1, '2024-11-07 16:47:32.026861', 'Jackson'),
(180, 'Password123', NULL, 0, 'scarlett_richards', 'Richards', 'scarlett.richards@school.com', 0, 1, '2024-11-07 16:47:32.202266', 'Scarlett'),
(181, 'Password123', NULL, 0, 'chloe_turner', 'Turner', 'chloe.turner@school.com', 0, 1, '2024-11-07 16:47:32.374711', 'Chloe'),
(182, 'Password123', NULL, 0, 'daniel_scott', 'Scott', 'daniel.scott@school.com', 0, 1, '2024-11-07 16:47:32.547502', 'Daniel'),
(183, 'Password123', NULL, 0, 'henry_cooper', 'Cooper', 'henry.cooper@school.com', 0, 1, '2024-11-07 16:47:32.734364', 'Henry'),
(184, 'Password123', NULL, 0, 'grace_clarke', 'Clarke', 'grace.clarke@school.com', 0, 1, '2024-11-07 16:47:32.908724', 'Grace'),
(185, 'Password123', NULL, 0, 'student_1', 'Doe', 'john.doe@student.com', 0, 1, '2024-11-07 16:47:33.120369', 'John'),
(186, 'Password123', NULL, 0, 'student_2', 'Smith', 'jane.smith@student.com', 0, 1, '2024-11-07 16:47:33.294962', 'Jane'),
(187, 'Password123', NULL, 0, 'student_3', 'Johnson', 'alice.johnson@student.com', 0, 1, '2024-11-07 16:47:33.483190', 'Alice'),
(188, 'Password123', NULL, 0, 'student_4', 'Williams', 'michael.williams@student.com', 0, 1, '2024-11-07 16:47:33.654468', 'Michael'),
(189, 'Password123', NULL, 0, 'student_5', 'Davis', 'emily.davis@student.com', 0, 1, '2024-11-07 16:47:33.833739', 'Emily'),
(190, 'Password123', NULL, 0, 'student_6', 'Clark', 'danielle.clark@student.com', 0, 1, '2024-11-07 16:47:34.016856', 'Danielle'),
(191, 'Password123', NULL, 0, 'student_7', 'James', 'ethan.james@student.com', 0, 1, '2024-11-07 16:47:34.194207', 'Ethan'),
(192, 'Password123', NULL, 0, 'student_8', 'Taylor', 'laura.taylor@student.com', 0, 1, '2024-11-07 16:47:34.367204', 'Laura'),
(193, 'Password123', NULL, 0, 'student_9', 'Hall', 'samuel.hall@student.com', 0, 1, '2024-11-07 16:47:34.544350', 'Samuel'),
(194, 'Password123', NULL, 0, 'student_10', 'White', 'oliver.white@student.com', 0, 1, '2024-11-07 16:47:34.718677', 'Oliver'),
(195, 'Password123', NULL, 0, 'student_11', 'Harris', 'amelia.harris@student.com', 0, 1, '2024-11-07 16:47:34.892433', 'Amelia'),
(196, 'Password123', NULL, 0, 'student_12', 'Wright', 'nathan.wright@student.com', 0, 1, '2024-11-07 16:47:35.071569', 'Nathan'),
(197, 'Password123', NULL, 0, 'student_13', 'Martin', 'sophia.martin@student.com', 0, 1, '2024-11-07 16:47:35.249629', 'Sophia'),
(198, 'Password123', NULL, 0, 'student_14', 'King', 'lucas.king@student.com', 0, 1, '2024-11-07 16:47:35.431316', 'Lucas'),
(199, 'Password123', NULL, 0, 'student_15', 'Evans', 'lily.evans@student.com', 0, 1, '2024-11-07 16:47:35.610048', 'Lily'),
(200, 'Password123', NULL, 0, 'student_16', 'Ward', 'mason.ward@student.com', 0, 1, '2024-11-07 16:47:35.787190', 'Mason'),
(201, 'Password123', NULL, 0, 'student_17', 'Jackson', 'ella.jackson@student.com', 0, 1, '2024-11-07 16:47:35.965767', 'Ella'),
(202, 'Password123', NULL, 0, 'student_18', 'Thomas', 'noah.thomas@student.com', 0, 1, '2024-11-07 16:47:36.142273', 'Noah'),
(203, 'Password123', NULL, 0, 'student_19', 'Baker', 'zoe.baker@student.com', 0, 1, '2024-11-07 16:47:36.314600', 'Zoe'),
(204, 'Password123', NULL, 0, 'student_20', 'Harrison', 'jack.harrison@student.com', 0, 1, '2024-11-07 16:47:36.489169', 'Jack');

-- ----------------------------
-- 3. Create registration_department Table
-- ----------------------------
CREATE TABLE IF NOT EXISTS `registration_department` (
    `department_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `department_name` VARCHAR(100) NOT NULL,
    `location` VARCHAR(100) NOT NULL,
    `faculty_head_id` INT NULL UNIQUE
    -- FOREIGN KEY will be added after registration_teacher table is created
);

-- ----------------------------
-- 4. Create registration_teacher Table
-- ----------------------------
CREATE TABLE IF NOT EXISTS `registration_teacher` (
    `teacher_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `teacher_fname` VARCHAR(50) NOT NULL,
    `teacher_lname` VARCHAR(50) NOT NULL,
    `email` VARCHAR(254) NOT NULL UNIQUE,
    `phone_number` VARCHAR(15) NOT NULL,
    `office_location` VARCHAR(100) NOT NULL,
    `hire_date` DATE NOT NULL,
    `department_id` INT NOT NULL,
    `user_id` INT NULL UNIQUE,
    FOREIGN KEY (`department_id`) REFERENCES `registration_department`(`department_id`),
    FOREIGN KEY (`user_id`) REFERENCES `auth_user`(`id`)
);

-- ----------------------------
-- 5. Insert Data into registration_department
-- ----------------------------
INSERT INTO `registration_department` (`department_id`, `department_name`, `location`, `faculty_head_id`) VALUES
(81, 'Mathematics Department', 'Building 1', 84),
(82, 'Physics Department', 'Building 2', 85),
(83, 'English Department', 'Building 3', 83),
(84, 'History Department', 'Building 4', 86),
(85, 'Art Department', 'Building 1', 87),
(86, 'Music Department', 'Building 5', 88),
(87, 'Physical Education Department', 'Gymnasium', 89),
(88, 'Computer Science Department', 'Tech Wing, Building 3', 90),
(89, 'Economics Department', 'Building 2', 91),
(90, 'Philosophy Department', 'Building 4', 92),
(91, 'Psychology Department', 'Building 2', 93),
(92, 'Sociology Department', 'Building 5', 94),
(93, 'Political Science Department', 'Building 4', 95),
(94, 'Engineering Department', 'Building 5', 96),
(95, 'Law Department', 'Building 1', 97),
(96, 'Biology Department', 'Science Wing, Building 2', 98),
(97, 'Chemistry Department', 'Science Wing, Building 2', 99),
(98, 'Business Department', 'Building 3', 100),
(99, 'Geography Department', 'Building 1', 101),
(100, 'Science Department', 'Building 2', NULL);

-- ----------------------------
-- 6. Insert Data into registration_teacher
-- ----------------------------
INSERT INTO `registration_teacher` (`teacher_id`, `teacher_fname`, `teacher_lname`, `email`, `phone_number`, `office_location`, `hire_date`, `department_id`, `user_id`) VALUES
(83, 'Emma', 'Brown', 'emma.brown@school.com', '555-0101', 'Room 101', '2015-08-12', 83, 164),
(84, 'Liam', 'Davis', 'liam.davis@school.com', '555-0102', 'Room 202', '2013-03-05', 81, 165),
(85, 'Olivia', 'Smith', 'olivia.smith@school.com', '555-0103', 'Room 303', '2017-11-23', 82, 166),
(86, 'Noah', 'Johnson', 'noah.johnson@school.com', '555-0104', 'Room 104', '2016-04-10', 84, 167),
(87, 'Ava', 'Martinez', 'ava.martinez@school.com', '555-0105', 'Room 205', '2014-02-20', 85, 168),
(88, 'James', 'Wilson', 'james.wilson@school.com', '555-0106', 'Room 306', '2018-09-15', 86, 169),
(89, 'Mia', 'Taylor', 'mia.taylor@school.com', '555-0107', 'Room 107', '2012-01-10', 87, 170),
(90, 'William', 'Clark', 'william.clark@school.com', '555-0108', 'Room 108', '2020-06-30', 88, 171),
(91, 'Sophia', 'Lee', 'sophia.lee@school.com', '555-0109', 'Room 309', '2011-05-20', 89, 172),
(92, 'Benjamin', 'Hall', 'benjamin.hall@school.com', '555-0110', 'Room 110', '2010-07-14', 90, 173),
(93, 'Amelia', 'White', 'amelia.white@school.com', '555-0111', 'Room 411', '2016-08-18', 91, 174),
(94, 'Logan', 'Green', 'logan.green@school.com', '555-0112', 'Room 512', '2013-04-24', 92, 175),
(95, 'Ella', 'Baker', 'ella.baker@school.com', '555-0113', 'Room 413', '2015-12-09', 93, 176),
(96, 'Lucas', 'Wright', 'lucas.wright@school.com', '555-0114', 'Room 514', '2014-02-11', 94, 177),
(97, 'Harper', 'James', 'harper.james@school.com', '555-0115', 'Room 115', '2019-03-29', 95, 178),
(98, 'Jackson', 'Adams', 'jackson.adams@school.com', '555-0116', 'Room 216', '2017-05-12', 96, 179),
(99, 'Scarlett', 'Richards', 'scarlett.richards@school.com', '555-0117', 'Room 317', '2018-05-15', 97, 180),
(100, 'Chloe', 'Turner', 'chloe.turner@school.com', '555-0118', 'Room 318', '2016-10-01', 98, 181),
(101, 'Daniel', 'Scott', 'daniel.scott@school.com', '555-0119', 'Room 219', '2012-11-22', 99, 182),
(102, 'Henry', 'Cooper', 'henry.cooper@school.com', '555-0120', 'Room 220', '2019-07-19', 82, 183),
(103, 'Grace', 'Clarke', 'grace.clarke@school.com', '555-0121', 'Room 221', '2020-03-22', 85, 184);

-- ----------------------------
-- 7. Add Foreign Key Constraint to registration_department.faculty_head_id
-- ----------------------------
ALTER TABLE `registration_department`
ADD CONSTRAINT `fk_faculty_head` FOREIGN KEY (`faculty_head_id`) REFERENCES `registration_teacher`(`teacher_id`);

-- ----------------------------
-- 8. Create registration_course Table
-- ----------------------------
CREATE TABLE IF NOT EXISTS `registration_course` (
    `course_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `course_name` VARCHAR(100) NOT NULL,
    `semester_offered` VARCHAR(10) NOT NULL,
    `credit` INT NOT NULL,
    `capacity` INT UNSIGNED NOT NULL,
    `schedule_time` VARCHAR(20) NOT NULL,
    `course_location` VARCHAR(100) NOT NULL,
    `department_id` INT NOT NULL,
    `teacher_id` INT NULL,
    `year_of_study_required` SMALLINT UNSIGNED NOT NULL,
    FOREIGN KEY (`department_id`) REFERENCES `registration_department`(`department_id`),
    FOREIGN KEY (`teacher_id`) REFERENCES `registration_teacher`(`teacher_id`)
);

-- ----------------------------
-- 9. Insert Data into registration_course
-- ----------------------------
INSERT INTO `registration_course` (`course_id`, `course_name`, `semester_offered`, `credit`, `capacity`, `schedule_time`, `course_location`, `department_id`, `teacher_id`, `year_of_study_required`) VALUES
(50, 'Introduction to Mathematics', 'Fall', 3, 30, '09:00', 'Building 1, Room 101', 81, 84, 1),
(51, 'Advanced Physics', 'Spring', 4, 25, '10:30', 'Building 2, Room 202', 82, 85, 1),
(52, 'Art Fundamentals', 'Fall', 2, 20, '11:00', 'Building 1, Room 103', 85, 103, 1),
(53, 'World History Overview', 'Fall', 3, 35, '13:00', 'Building 4, Room 104', 84, 86, 1),
(54, 'Computer Programming Basics', 'Spring', 4, 28, '14:00', 'Tech Wing, Room 402', 88, 90, 1),
(55, 'Introduction to Economics', 'Fall', 3, 30, '15:00', 'Building 2, Room 205', 89, 91, 1),
(56, 'Philosophy and Ethics', 'Spring', 3, 25, '10:00', 'Building 4, Room 207', 90, 92, 1),
(57, 'Foundations of Psychology', 'Fall', 4, 32, '11:30', 'Building 2, Room 309', 91, 93, 1),
(58, 'Introduction to Sociology', 'Spring', 3, 25, '09:00', 'Building 5, Room 212', 92, 94, 1),
(59, 'Political Systems 101', 'Fall', 3, 35, '14:30', 'Building 4, Room 304', 93, 95, 1),
(60, 'Introduction to Engineering', 'Spring', 4, 28, '13:30', 'Building 5, Room 509', 94, 96, 1),
(61, 'Constitutional Law Basics', 'Fall', 3, 20, '12:00', 'Building 1, Room 110', 95, 97, 1),
(62, 'Biology 101', 'Spring', 3, 30, '08:30', 'Science Wing, Room 201', 96, 98, 1),
(63, 'Chemistry Basics', 'Fall', 3, 28, '10:30', 'Science Wing, Room 304', 97, 99, 3),
(64, 'Business Fundamentals', 'Spring', 3, 40, '13:00', 'Building 3, Room 204', 98, 100, 1),
(65, 'Advanced Geography', 'Fall', 3, 25, '16:00', 'Building 1, Room 207', 99, 101, 1);

-- ----------------------------
-- 10. Create registration_student Table
-- ----------------------------
CREATE TABLE IF NOT EXISTS `registration_student` (
    `student_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `student_fname` VARCHAR(50) NOT NULL,
    `student_lname` VARCHAR(50) NOT NULL,
    `major` VARCHAR(100) NOT NULL,
    `year_of_study` SMALLINT UNSIGNED NOT NULL,
    `email` VARCHAR(254) NOT NULL UNIQUE,
    `phone_number` VARCHAR(15) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `status` VARCHAR(20) NOT NULL,
    `date_of_enrollment` DATE NOT NULL,
    `user_id` INT NULL UNIQUE,
    `department_id` INT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `auth_user`(`id`),
    FOREIGN KEY (`department_id`) REFERENCES `registration_department`(`department_id`)
);

-- ----------------------------
-- 11. Insert Data into registration_student
-- ----------------------------
INSERT INTO `registration_student` (`student_id`, `student_fname`, `student_lname`, `major`, `year_of_study`, `email`, `phone_number`, `address`, `status`, `date_of_enrollment`, `user_id`, `department_id`) VALUES
(81, 'John', 'Doe', 'Mathematics', 4, 'john.doe@student.com', '555-0201', '123 Maple St', 'Active', '2022-08-15', 185, 81),
(82, 'Jane', 'Smith', 'Computer Science', 2, 'jane.smith@student.com', '555-0202', '456 Oak St', 'Active', '2021-08-15', 186, 88),
(83, 'Alice', 'Johnson', 'Physics', 3, 'alice.johnson@student.com', '555-0203', '789 Pine St', 'Active', '2020-08-15', 187, 82),
(84, 'Michael', 'Williams', 'History', 4, 'michael.williams@student.com', '555-0204', '101 Birch Ave', 'Active', '2019-08-15', 188, 84),
(85, 'Emily', 'Davis', 'Art', 2, 'emily.davis@student.com', '555-0205', '202 Cedar St', 'Active', '2021-08-15', 189, 85),
(86, 'Danielle', 'Clark', 'Music', 1, 'danielle.clark@student.com', '555-0206', '303 Pine St', 'Active', '2023-01-12', 190, 86),
(87, 'Ethan', 'James', 'Economics', 3, 'ethan.james@student.com', '555-0207', '505 Elm St', 'Active', '2020-09-20', 191, 89),
(88, 'Laura', 'Taylor', 'Philosophy', 2, 'laura.taylor@student.com', '555-0208', '608 Cedar Ave', 'Active', '2021-08-10', 192, 90),
(89, 'Samuel', 'Hall', 'Sociology', 4, 'samuel.hall@student.com', '555-0209', '706 Maple Blvd', 'Active', '2019-08-15', 193, 92),
(90, 'Oliver', 'White', 'Political Science', 3, 'oliver.white@student.com', '555-0210', '809 Birch Rd', 'Active', '2020-08-18', 194, 93),
(91, 'Amelia', 'Harris', 'Engineering', 2, 'amelia.harris@student.com', '555-0211', '102 Spruce St', 'Active', '2021-08-12', 195, 94),
(92, 'Nathan', 'Wright', 'Law', 4, 'nathan.wright@student.com', '555-0212', '305 Willow Ave', 'Active', '2019-08-23', 196, 95),
(93, 'Sophia', 'Martin', 'Biology', 1, 'sophia.martin@student.com', '555-0213', '410 Redwood Blvd', 'Active', '2023-02-05', 197, 96),
(94, 'Lucas', 'King', 'Chemistry', 3, 'lucas.king@student.com', '555-0214', '512 Chestnut Dr', 'Active', '2020-08-14', 198, 97),
(95, 'Lily', 'Evans', 'Business', 2, 'lily.evans@student.com', '555-0215', '620 Maple Grove', 'Active', '2021-08-20', 199, 98),
(96, 'Mason', 'Ward', 'Geography', 4, 'mason.ward@student.com', '555-0216', '710 Willow Lane', 'Active', '2019-08-25', 200, 99),
(97, 'Ella', 'Jackson', 'Music', 1, 'ella.jackson@student.com', '555-0217', '815 Pine Crest', 'Active', '2023-03-15', 201, 86),
(98, 'Noah', 'Thomas', 'Philosophy', 3, 'noah.thomas@student.com', '555-0218', '920 Poplar Blvd', 'Active', '2020-08-22', 202, 90),
(99, 'Zoe', 'Baker', 'Physical Education', 2, 'zoe.baker@student.com', '555-0219', '1005 Sycamore Ave', 'Active', '2021-08-16', 203, 87),
(100, 'Jack', 'Harrison', 'Psychology', 4, 'jack.harrison@student.com', '555-0220', '1112 Beech St', 'Active', '2019-08-30', 204, 91),
(101, '', '', 'Undeclared', 1, 'anthonydavidsparks@gmail.com', '000-000-0000', '', 'Active', '2024-01-01', 1, 81);

-- ----------------------------
-- 12. Create registration_enrollment Table
-- ----------------------------
CREATE TABLE IF NOT EXISTS `registration_enrollment` (
    `enrollment_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `enrollment_date` DATE NOT NULL,
    `grade` VARCHAR(2) NULL,
    `status` VARCHAR(20) NOT NULL,
    `course_id` INT NOT NULL,
    `student_id` INT NOT NULL,
    FOREIGN KEY (`course_id`) REFERENCES `registration_course`(`course_id`),
    FOREIGN KEY (`student_id`) REFERENCES `registration_student`(`student_id`),
    UNIQUE KEY `student_course_unique` (`student_id`, `course_id`)
);

-- ----------------------------
-- 13. Insert Data into registration_enrollment
-- ----------------------------
INSERT INTO `registration_enrollment` (`enrollment_id`, `enrollment_date`, `grade`, `status`, `course_id`, `student_id`) VALUES
(20, '2024-11-07', NULL, 'Enrolled', 57, 81),
(21, '2024-11-07', NULL, 'Enrolled', 58, 81),
(22, '2024-11-07', NULL, 'Enrolled', 50, 81),
(23, '2024-11-07', NULL, 'Enrolled', 61, 81),
(24, '2024-11-07', NULL, 'Enrolled', 59, 81),
(25, '2024-11-07', NULL, 'Enrolled', 62, 81),
(26, '2024-11-07', NULL, 'Enrolled', 65, 81),
(27, '2024-11-07', NULL, 'Enrolled', 63, 81),
(28, '2024-11-07', NULL, 'Enrolled', 54, 81),
(29, '2024-11-07', '90', 'Enrolled', 50, 82),
(30, '2024-11-07', NULL, 'Enrolled', 51, 82);

-- ----------------------------
-- 14. Create registration_course_prerequisites Table
-- ----------------------------
CREATE TABLE IF NOT EXISTS `registration_course_prerequisites` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `from_course_id` INT NOT NULL,
    `to_course_id` INT NOT NULL,
    FOREIGN KEY (`from_course_id`) REFERENCES `registration_course`(`course_id`),
    FOREIGN KEY (`to_course_id`) REFERENCES `registration_course`(`course_id`),
    UNIQUE KEY `course_prerequisite_unique` (`from_course_id`, `to_course_id`)
);

-- ----------------------------
-- 15. Insert Data into registration_course_prerequisites
-- ----------------------------
-- Corrected IDs to match existing course IDs
INSERT INTO `registration_course_prerequisites` (`id`, `from_course_id`, `to_course_id`) VALUES
(1, 50, 51),
(2, 51, 52),
(3, 52, 53),
(4, 53, 54),
(5, 54, 55),
(6, 55, 56),
(7, 56, 57),
(8, 57, 58),
(9, 58, 59),
(10, 59, 60),
(11, 60, 61),
(12, 61, 62),
(13, 62, 63),
(14, 63, 64),
(15, 64, 65);

-- ----------------------------
-- 16. Create django_session Table
-- ----------------------------
CREATE TABLE IF NOT EXISTS `django_session` (
    `session_key` VARCHAR(40) NOT NULL PRIMARY KEY,
    `session_data` TEXT NOT NULL,
    `expire_date` DATETIME NOT NULL,
    INDEX `django_session_expire_date_idx` (`expire_date`)
);

-- ----------------------------
-- 17. Insert Data into django_session
-- ----------------------------
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4r4x13ismizmlttoyepzxo683260y333', '.eJxVjEEOwiAQRe_C2hAYaCsu3XsGMswwUjUlKe3KeHdD0oVu_3vvv1XEfStxb3mNM6uLsur0uyWkZ1464Acu96qpLts6J90VfdCmb5Xz63q4fwcFW-l1oMCAFEbBwZF4F6whY0fDYATRM9kEYs44eMGM5DwgwJRk8lYsq88X_2Y4nA:1t988B:WtfODdx0guCqe_bPHUOhSEtJgE-ZET51O1RNLype8t8', '2024-11-21 19:25:23.857288');

-- ----------------------------
-- 18. Create Indexes for Application-Specific Tables
-- ----------------------------
-- Create index on registration_department.location
CREATE INDEX `registration_department_location_idx` ON `registration_department`(`location`);

-- Create index on registration_teacher.email
CREATE INDEX `registration_teacher_email_idx` ON `registration_teacher`(`email`);

-- Create index on registration_course.department_id
CREATE INDEX `registration_course_department_id_idx` ON `registration_course`(`department_id`);

-- Create index on registration_course.teacher_id
CREATE INDEX `registration_course_teacher_id_idx` ON `registration_course`(`teacher_id`);

-- Create index on registration_course_prerequisites.from_course_id
CREATE INDEX `registration_course_prerequisites_from_course_id_idx` ON `registration_course_prerequisites`(`from_course_id`);

-- Create index on registration_course_prerequisites.to_course_id
CREATE INDEX `registration_course_prerequisites_to_course_id_idx` ON `registration_course_prerequisites`(`to_course_id`);

-- Create index on registration_enrollment.course_id
CREATE INDEX `registration_enrollment_course_id_idx` ON `registration_enrollment`(`course_id`);

-- Create index on registration_enrollment.student_id
CREATE INDEX `registration_enrollment_student_id_idx` ON `registration_enrollment`(`student_id`);

-- Create index on registration_student.department_id
CREATE INDEX `registration_student_department_id_idx` ON `registration_student`(`department_id`);

-- Create index on registration_student.email for faster lookups
CREATE INDEX `registration_student_email_idx` ON `registration_student`(`email`);

-- ----------------------------
-- 19. Create Remaining Tables (auth_group, auth_permission, etc.)
-- ----------------------------

-- Create auth_group Table
CREATE TABLE IF NOT EXISTS `auth_group` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(150) NOT NULL UNIQUE
);

-- Create auth_permission Table
CREATE TABLE IF NOT EXISTS `auth_permission` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `content_type_id` INT NOT NULL,
    `codename` VARCHAR(100) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    UNIQUE KEY `auth_permission_content_type_id_codename_uniq` (`content_type_id`, `codename`)
);

-- Create django_content_type Table
CREATE TABLE IF NOT EXISTS `django_content_type` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `app_label` VARCHAR(100) NOT NULL,
    `model` VARCHAR(100) NOT NULL,
    UNIQUE KEY `django_content_type_app_label_model_uniq` (`app_label`, `model`)
);

-- Create auth_user_groups Table
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` INT NOT NULL,
    `group_id` INT NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `auth_user`(`id`),
    FOREIGN KEY (`group_id`) REFERENCES `auth_group`(`id`),
    UNIQUE KEY `auth_user_groups_user_id_group_id_uniq` (`user_id`, `group_id`)
);

-- Create auth_user_user_permissions Table
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` INT NOT NULL,
    `permission_id` INT NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `auth_user`(`id`),
    FOREIGN KEY (`permission_id`) REFERENCES `auth_permission`(`id`),
    UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_uniq` (`user_id`, `permission_id`)
);

-- Create auth_group_permissions Table
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `group_id` INT NOT NULL,
    `permission_id` INT NOT NULL,
    FOREIGN KEY (`group_id`) REFERENCES `auth_group`(`id`),
    FOREIGN KEY (`permission_id`) REFERENCES `auth_permission`(`id`),
    UNIQUE KEY `auth_group_permissions_group_id_permission_id_uniq` (`group_id`, `permission_id`)
);

-- Create django_admin_log Table
CREATE TABLE IF NOT EXISTS `django_admin_log` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `action_time` DATETIME NOT NULL,
    `object_id` TEXT NULL,
    `object_repr` VARCHAR(200) NOT NULL,
    `action_flag` SMALLINT UNSIGNED NOT NULL,
    `change_message` TEXT NOT NULL,
    `content_type_id` INT NULL,
    `user_id` INT NOT NULL,
    FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type`(`id`),
    FOREIGN KEY (`user_id`) REFERENCES `auth_user`(`id`)
);

-- ----------------------------
-- 20. Re-enable Foreign Key Checks
-- ----------------------------
SET FOREIGN_KEY_CHECKS = 1;
