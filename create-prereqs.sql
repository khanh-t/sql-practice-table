CREATE TABLE CoursePrerequisites
	(
	courseNo INT,
	prerequisite INT,
	PRIMARY KEY (courseNo, prerequisite), 
	FOREIGN KEY (courseNo) REFERENCES Course(courseNo),
	FOREIGN KEY (prerequisite) REFERENCES Course(courseNo)
	);
	
/* Creating a new table to represent the many to many relationship (a course can be a prerequisite of many courses, and can also have many prerequisites) */
