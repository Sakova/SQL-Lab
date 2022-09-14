CREATE TABLE teacher (
	personal_number VARCHAR (5) PRIMARY KEY,
	last_name VARCHAR (50) NOT NULL,
	position VARCHAR (50) NOT NULL,
	department VARCHAR (20) NOT NULL,
	speciality VARCHAR (50) NOT NULL,
	home_phone SMALLINT NOT NULL
);

CREATE TABLE subject (
	subject_code VARCHAR (5) PRIMARY KEY,
	subject_name VARCHAR (50) NOT NULL,
	hours_amount SMALLINT NOT NULL,
	speciality VARCHAR (50) NOT NULL,
	semester SMALLINT NOT NULL CHECK (semester > 0)
);

CREATE TABLE student_group (
	group_code VARCHAR (5) PRIMARY KEY,
	group_title VARCHAR (20) NOT NULL,
	people_amount SMALLINT NOT NULL CHECK (people_amount > 0),
	speciality VARCHAR (50) NOT NULL,
	praepostor_surname VARCHAR (20) NOT NULL
);

CREATE TABLE teacher_teaches_subjects_in_groups (
	group_code VARCHAR (5) NOT NULL references student_group(group_code),
	subject_code VARCHAR (5) NOT NULL references subject(subject_code),
	personal_number VARCHAR (5) NOT NULL references teacher(personal_number),
	audience_number SMALLINT NOT NULL
);
