CREATE TABLE provider (
	p VARCHAR (4) PRIMARY KEY,
	p_name VARCHAR (30) NOT NULL,
	status SMALLINT NOT NULL,
	city VARCHAR (40) NOT NULL
);

CREATE TABLE detail (
	d VARCHAR (4) PRIMARY KEY,
	d_name VARCHAR (50) NOT NULL,
	color VARCHAR (40) NOT NULL,
	size SMALLINT NOT NULL CHECK (size > 0),
	city VARCHAR (40) NOT NULL
);

CREATE TABLE project (
	pr VARCHAR (5) PRIMARY KEY,
	pr_name VARCHAR (10) NOT NULL,
	city VARCHAR (40) NOT NULL
);

CREATE TABLE provide_details_to_projects (
	p VARCHAR (4) NOT NULL references provider(p),
	d VARCHAR (4) NOT NULL references detail(d),
	pr VARCHAR (5) NOT NULL references project(pr),
	s SMALLINT NOT NULL
);
