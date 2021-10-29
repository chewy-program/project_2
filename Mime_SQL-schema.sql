
DROP TABLE IF EXISTS qol;


CREATE TABLE qol ( 
	country VARCHAR (255) PRIMARY KEY,
	happiness_index float, 
	freedom_to_make_life_choices float, 
	overworking_employees float,
	leisure_time float,
	rooms_per_person Float
)

