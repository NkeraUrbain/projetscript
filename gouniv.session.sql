CREATE TABLE staff(
    staffNO SERIAL PRIMARY KEY,
    name VARCHAR(50),
    region VARCHAR(30)
);

CREATE TABLE student(
    studentId SERIAL PRIMARY KEY,
    name VARCHAR,
    registerred boolean,
    region VARCHAR,
    staffNO INT REFERENCES staff( staffNO)
);

CREATE TABLE course(
    courseCode SERIAL PRIMARY KEY,
    title VARCHAR,
    credit INT,
    quota INT,
    staffNO INT REFERENCES staff(staffNO)
);

CREATE TABLE enrollement(
    studentID INT REFERENCES student(studentID),
    courseCode INT REFERENCES course(courseCode),
    dateEnrolled DATE,
    finalGrade VARCHAR,
    PRIMARY KEY(studentID,courseCode)
);

CREATE TABLE assignment(
    assignmentNO INT,
    studentID INT REFERENCES student(studentID),
    courseCode INT REFERENCES course(courseCode),
    grade INT,
    PRIMARY KEY(assignmentNO, studentID, courseCode)
);
