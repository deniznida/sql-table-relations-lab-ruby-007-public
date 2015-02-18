CREATE TABLE schools(
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  name text,
  rating INTEGER,
  year_established INTEGER
);

CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  name text,
  school_id INTEGER REFERENCES schools(id)
);

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  name text,
  age INTEGER 
);

CREATE TABLE enrollments (
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  student_id INTEGER REFERENCES students(id),
  course_id INTEGER REFERENCES courses(id)
);