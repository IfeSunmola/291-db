USE LectureDb;

DROP TABLE IF EXISTS Takes;
DROP TABLE IF EXISTS Teaches;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Section;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Instructor;
DROP TABLE IF EXISTS Department;


CREATE TABLE Department(
	dept_name VARCHAR(20) PRIMARY KEY,
	building VARCHAR(20) NOT NULL, -- made building a primary key so it can be used in Section
	budget NUMERIC(8, 2),
);


CREATE TABLE Students(
	student_id CHAR(5) PRIMARY KEY,
	student_name VARCHAR(20) NOT NULL,
	dept_name VARCHAR(20) NOT NULL,
	tot_credit NUMERIC (3, 0) NOT NULL
	FOREIGN KEY (dept_name) REFERENCES Department
);

CREATE TABLE Instructor(
	instructor_id CHAR(5) PRIMARY KEY,
	instructor_name VARCHAR(20) NOT NULL,
	dept_name VARCHAR(20) NOT NULL,
	salary NUMERIC(8,2) NOT NULL
	FOREIGN KEY (dept_name) REFERENCES Department
);

CREATE TABLE Course(
	course_id VARCHAR(8) PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	dept_name VARCHAR(20) NOT NULL,
	credits NUMERIC(2,0) NOT NULL,
	FOREIGN KEY (dept_name) REFERENCES department
);

CREATE TABLE Section(
-- use building in Department as foreign key here?
	course_id VARCHAR(8),
	sec_id NUMERIC (1, 0),
	semester VARCHAR(8),
	[year] NUMERIC (4, 0),
	building VARCHAR(20),
	room_number NUMERIC(4, 0),
	time_slot_id CHAR(1)
	PRIMARY KEY (course_id, sec_id, semester, [year])
	FOREIGN KEY (course_id) REFERENCES Course,
);

CREATE TABLE Teaches(
	instructor_id CHAR(5),
	course_id VARCHAR(8),
	sec_id NUMERIC (1, 0),
	semester VARCHAR(8),
	[year] NUMERIC (4, 0)
	PRIMARY KEY (instructor_id, course_id, sec_id, semester,  [year]),
	FOREIGN KEY (instructor_id) REFERENCES Instructor,
	FOREIGN KEY (course_id) REFERENCES Course
);

CREATE TABLE Takes (
	student_id CHAR(5),
	course_id VARCHAR(8),
	sec_id NUMERIC (1, 0),
	semester VARCHAR(8),
	[year] NUMERIC(4,0),
	grade VARCHAR(2),
	primary KEY (student_id, course_id, sec_id, semester, [year]),
	FOREIGN KEY (student_id) REFERENCES Students,
	FOREIGN KEY (course_id, sec_id, semester, [year]) REFERENCES Section 
);