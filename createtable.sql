-- create
CREATE TABLE TEACHER (
  teacher_id int NOT NULL,
  teacher_fname varchar(255) NOT NULL,
  teacher_lname varchar(255) NOT NULL,
  department_id int NOT NULL,
  email varchar(255),
  phone_number varchar(255),
  office_location varchar(255),
  hire_date varchar(255),
  PRIMARY KEY(teacher_ID)
);

CREATE TABLE DEPARTMENT (
  department_id int NOT NULL,
  department_name varchar(255) NOT NULL,
  location varchar(255),
  faculty_head_id int NOT NULL,
  PRIMARY KEY (department_id),
  FOREIGN KEY (faculty_head_id) REFERENCES TEACHER(teacher_id)
);

CREATE TABLE STUDENT (
  student_id int NOT NULL,
  student_fname varchar(255) NOT NULL,
  student_lname varchar(255) NOT NULL,
  major varchar(255),
  year_of_study varchar(255) NOT NULL,
  email varchar(255),
  phone_number varchar(255),
  address varchar(255) NOT NULL,
  department_id int NOT NULL, 
  status varchar(255),
  date_of_enrollment varchar(255),
  PRIMARY KEY (student_id),
  FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id)
);

CREATE TABLE COURSE (
  course_id int NOT NULL,
  course_name varchar(255) NOT NULL,
  department_id int NOT NULL,
  semester_offered varchar(255),
  credit int,
  teacher_id int NOT NULL,
  prerequisite_id int,
  capacity int,
  schedule_time varchar(255),
  course_location varchar(255),
  PRIMARY KEY (course_id),
  FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id),
  FOREIGN KEY (teacher_id) REFERENCES TEACHER(teacher_id)
);

CREATE TABLE PREREQUISITE (
  course_id int NOT NULL,
  prerequisite_id int,
  PRIMARY KEY (course_id),
  FOREIGN KEY (course_id) REFERENCES COURSE(course_id),
  FOREIGN KEY (prerequisite_id) REFERENCES COURSE(course_id)
);

CREATE TABLE ENROLLMENT (
  enrollment_id int NOT NULL,
  student_id int NOT NULL,
  course_id int NOT NULL,
  enrollment_date varchar(255) NOT NULL,
  grade varchar(255),
  status varchar(255),
  PRIMARY KEY (enrollment_id),
  FOREIGN KEY (student_id) REFERENCES STUDENT(student_id),
  FOREIGN KEY (course_id) REFERENCES COURSE(course_id)
);

-- insert
INSERT INTO TEACHER VALUES (0001, 'Clark', 'Kent', 0001, 'superman@gmail.com', '123-456-7890', 'Science Building 3.01.24', '04/18/1938');
INSERT INTO DEPARTMENT VALUES (0001, 'Science', 'Science Building 1.02.03', 0001);
INSERT INTO COURSE VALUES (0001, 'Advanced Chemistry', 0001, 'Spring', 1, 0001, 0002, 30, '9 am', '2.10.22');
INSERT INTO COURSE VALUES (0002, 'Basics of Chemistry', 0001, 'Fall', 1, 0001, NULL, 30, '9 am', '2.10.22');
INSERT INTO PREREQUISITE VALUES (0002, NULL);

-- add foreign keys
ALTER TABLE TEACHER
ADD FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id);

ALTER TABLE COURSE
ADD FOREIGN KEY (prerequisite_id) REFERENCES PREREQUISITE(course_id);

-- fetch 
SELECT * FROM TEACHER;

