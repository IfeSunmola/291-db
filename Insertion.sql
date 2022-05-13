USE LectureDb;

INSERT INTO Department VALUES('Comp. Sci.', 'Taylor', 100000);
INSERT INTO Department VALUES('Biology', 'Watson', 90000);
INSERT INTO Department VALUES('Elec. Eng.', 'Taylor', 85000);
INSERT INTO Department VALUES('Music', 'Packard', 80000);
INSERT INTO Department VALUES('Finance', 'Painter', 120000);
INSERT INTO Department VALUES('History', 'Painter', 50000);
INSERT INTO Department VALUES('Physics', 'Watson', 70000);
---------------------------------------------------------------------------
INSERT INTO Students VALUES ('00128', 'Zhang', 'Comp. Sci.', 102);
INSERT INTO Students VALUES ('12345', 'Shankar', 'Comp. Sci.', 32);
INSERT INTO Students VALUES ('19991', 'Brandt', 'History', 80);
INSERT INTO Students VALUES ('23121', 'Chavez', 'Finance', 110);
INSERT INTO Students VALUES ('44553', 'Peltier', 'Physics', 56);
INSERT INTO Students VALUES ('45678', 'Levy', 'Physics', 46);
INSERT INTO Students VALUES ('54321', 'Williams', 'Comp. Sci.', 54);
INSERT INTO Students VALUES ('55739', 'Sanchez', 'Music', 38);
INSERT INTO Students VALUES ('70557', 'Snow', 'Physics', 0);
INSERT INTO Students VALUES ('76543', 'Brown', 'Comp. Sci.', 58);
INSERT INTO Students VALUES ('76653', 'Aoi', 'Elec. Eng.', 60);
INSERT INTO Students VALUES ('98765', 'Bourikas', 'Elec. Eng.', 98);
INSERT INTO Students VALUES ('98988', 'Tanaka', 'Biology', 120);
---------------------------------------------------------------------------
INSERT INTO Instructor VALUES ('22222', 'Einstein', 'Physics', 95000);
INSERT INTO Instructor VALUES ('12121', 'Wu', 'Finance', 90000);
INSERT INTO Instructor VALUES ('32343', 'El Said', 'History', 60000);
INSERT INTO Instructor VALUES ('45565', 'Katz', 'Comp. Sci.', 75000);
INSERT INTO Instructor VALUES ('98345', 'Kim', 'Elec. Eng.', 80000);
INSERT INTO Instructor VALUES ('76766', 'Crick', 'Biology', 72000);
INSERT INTO Instructor VALUES ('10101', 'Srinivasan', 'Comp. Sci.', 65000);
INSERT INTO Instructor VALUES ('58583', 'Califieri', 'History', 62000);
INSERT INTO Instructor VALUES ('83821', 'Brandt', 'Comp. Sci.', 92000);
INSERT INTO Instructor VALUES ('15151', 'Mozart', 'Music', 40000);
INSERT INTO Instructor VALUES ('33456', 'Gold', 'Physics', 87000);
INSERT INTO Instructor VALUES ('76543', 'Singh', 'Finance', 80000);
---------------------------------------------------------------------------
INSERT INTO Course VALUES('BIO-101', 'Intro. to Biology', 'Biology', 4);
INSERT INTO Course VALUES('BIO-301', 'Genetics', 'Biology', 4);
INSERT INTO Course VALUES('BIO-399', 'Computational Biology', 'Biology', 3);

INSERT INTO Course VALUES('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', 4);
INSERT INTO Course VALUES('CS-190', 'Game Design', 'Comp. Sci.', 4);
INSERT INTO Course VALUES('CS-315', 'Robotics', 'Comp. Sci.', 3);
INSERT INTO Course VALUES('CS-319', 'Image Processing', 'Comp. Sci.', 3);
INSERT INTO Course VALUES('CS-347', 'Database System Concepts', 'Comp. Sci.', 3);

INSERT INTO Course VALUES('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', 3);
INSERT INTO Course VALUES('FIN-201', 'Investment Banking', 'Finance', 3);
INSERT INTO Course VALUES('HIS-351', 'World History', 'History', 3);
INSERT INTO Course VALUES('MU-199', 'Music Video Production', 'Music', 3);
INSERT INTO Course VALUES('PHY-101', 'Physical Principles', 'Physics', 4);
---------------------------------------------------------------------------
INSERT INTO Teaches VALUES('10101', 'CS-101', 1, 'Fall', 2009);
INSERT INTO Teaches VALUES('10101', 'CS-315', 1, 'Spring', 2010);
INSERT INTO Teaches VALUES('10101', 'CS-347', 1, 'Fall', 2009);

INSERT INTO Teaches VALUES('12121', 'FIN-201', 1, 'Spring', 2010);

INSERT INTO Teaches VALUES('15151', 'MU-199', 1, 'Spring', 2010);

INSERT INTO Teaches VALUES('22222', 'PHY-101', 1, 'Fall', 2009);

INSERT INTO Teaches VALUES('32343', 'HIS-351', 1, 'Spring', 2010);

INSERT INTO Teaches VALUES('45565', 'CS-101', 1, 'Spring', 2010);
INSERT INTO Teaches VALUES('45565', 'CS-319', 1, 'Spring', 2010);

INSERT INTO Teaches VALUES('76766', 'BIO-101', 1, 'Summer', 2009);
INSERT INTO Teaches VALUES('76766', 'BIO-301', 1, 'Summer', 2010);

INSERT INTO Teaches VALUES('83821', 'CS-190', 1, 'Spring', 2009);
INSERT INTO Teaches VALUES('83821', 'CS-190', 2, 'Spring', 2009);
INSERT INTO Teaches VALUES('83821', 'CS-319', 2, 'Spring', 2010);

INSERT INTO Teaches VALUES('98345', 'EE-181', 1, 'Spring', 2009);
---------------------------------------------------------------------------
INSERT INTO Section VALUES ('BIO-101', 1, 'Summer', 2009, 'Painter', 514, 'B');
INSERT INTO Section VALUES ('BIO-301', 1, 'Summer', 2010, 'Painter', 514, 'A');

INSERT INTO Section VALUES ('CS-101', 1, 'Fall', 2009, 'Packard', 101, 'H');
INSERT INTO Section VALUES ('CS-101', 1, 'Spring', 2010, 'Packard', 101, 'F');
INSERT INTO Section VALUES ('CS-190', 1, 'Spring', 2009, 'Taylor', 3128, 'E');
INSERT INTO Section VALUES ('CS-190', 2, 'Spring', 2009, 'Taylor', 3128, 'A');
INSERT INTO Section VALUES ('CS-315', 1, 'Spring', 2010, 'Watson', 120, 'D');
INSERT INTO Section VALUES ('CS-319', 1, 'Spring', 2010, 'Watson', 100, 'B');
INSERT INTO Section VALUES ('CS-319', 2, 'Spring', 2010, 'Taylor', 3128, 'C');
INSERT INTO Section VALUES ('CS-347', 1, 'Fall', 2009, 'Taylor', 3128, 'A');

INSERT INTO Section VALUES ('EE-181', 1, 'Spring', 2009, 'Taylor', 3128, 'C');
INSERT INTO Section VALUES ('FIN-201', 1, 'Spring', 2010, 'Packard', 501, 'B');
INSERT INTO Section VALUES ('HIS-351', 1, 'Spring', 2010, 'Painter', 514, 'C');
INSERT INTO Section VALUES ('MU-199', 1, 'Spring', 2010, 'Packard', 101, 'D');
INSERT INTO Section VALUES ('PHY-101', 1, 'Fall', 2009, 'Watson', 100, 'A');
---------------------------------------------------------------------------
INSERT INTO Takes VALUES ('00128', 'CS-101', 1, 'Fall', 2009,  'A');
INSERT INTO Takes VALUES ('00128', 'CS-347', 1, 'Fall', 2009,  'A-');
INSERT INTO Takes VALUES ('12345', 'CS-101', 1, 'Fall', 2009,  'C');
INSERT INTO Takes VALUES ('12345', 'CS-190', 2, 'Spring', 2009,  'A');
INSERT INTO Takes VALUES ('12345', 'CS-315', 1, 'Spring', 2010,  'A');
INSERT INTO Takes VALUES ('12345', 'CS-347', 1, 'Fall', 2009,  'A');

INSERT INTO Takes VALUES ('19991', 'HIS-351', 1, 'Spring', 2010,  'B');
INSERT INTO Takes VALUES ('23121', 'FIN-201', 1, 'Spring', 2010,  'C+');

INSERT INTO Takes VALUES ('44553', 'PHY-101', 1, 'Fall', 2009,  'B-');
INSERT INTO Takes VALUES ('45678', 'CS-101', 1, 'Fall', 2009,  'F');

INSERT INTO Takes VALUES ('45678', 'CS-101', 1, 'Spring', 2010,  'B+');
INSERT INTO Takes VALUES ('45678', 'CS-319', 1, 'Spring', 2010,  'B');

INSERT INTO Takes VALUES ('54321', 'CS-101', 1, 'Fall', 2009,  'A-');

INSERT INTO Takes VALUES ('54321', 'CS-190', 2, 'Spring', 2009,  'B+');
INSERT INTO Takes VALUES ('55739', 'MU-199', 1, 'Spring', 2010,  'A-');

INSERT INTO Takes VALUES ('76543', 'CS-101', 1, 'Fall', 2009,  'A');

INSERT INTO Takes VALUES ('76543', 'CS-319', 2, 'Spring', 2010,  'A');
INSERT INTO Takes VALUES ('76653', 'EE-181', 1, 'Spring', 2009,  'C');
INSERT INTO Takes VALUES ('98765', 'CS-101', 1, 'Fall', 2009,  'C-');
INSERT INTO Takes VALUES ('98765', 'CS-315', 1, 'Spring', 2010,  'B');

INSERT INTO Takes VALUES ('98988', 'BIO-101', 1, 'Summer', 2009,  'A');
INSERT INTO Takes VALUES ('98988', 'BIO-301', 1, 'Summer', 2010,  NULL);
