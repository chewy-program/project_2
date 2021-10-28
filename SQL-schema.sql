
DROP TABLE IF EXISTS qol;

CREATE TABLE qol ( 
	country VARCHAR (255) PRIMARY KEY,
	overworking_employees float, 
	social_support float, 
	leisure_time float, 
	Freedom float, 
	rooms_per_person Float, 
	satisfaction FLOAT, 
	Corruption FLOAT
);

