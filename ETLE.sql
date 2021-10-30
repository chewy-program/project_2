DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS employment;
DROP TABLE IF EXISTS economy;
DROP TABLE IF Exists environment; 
DROP TABLE IF EXISTS qol;
DROP TABLE IF Exists health;

CREATE TABLE country ( 
	"Country" VARCHAR (255) PRIMARY KEY,
	regional_indicator VARCHAR, 
	corruption FLOAT 
);

SELECT * FROM country; 

CREATE TABLE economy (
	Country VARCHAR (255) PRIMARY KEY,
	"logged_GDP" FLOAT,
	perception_of_corruption FLOAT, 
	employees_overworked FLOAT
);

SELECT * FROM economy; 

CREATE TABLE employment ( 
	country VARCHAR (255) PRIMARY KEY,
	employment_rate FLOAT, 
	long_term_unemployment_rate FLOAT,
	GDP FLOAT
); 

SELECT * FROM economy;

CREATE TABLE environment (
	country VARCHAR (255) PRIMARY KEY,
	air_pollution FLOAT, 
	water_quality FLOAT
);
SELECT * FROM environment;

CREATE TABLE qol ( 
	country VARCHAR (255) PRIMARY KEY,
	happiness_index float,
	social_support FLOAT, 
	freedom_to_make_life_choices FLOAT, 
	overworking_employees FLOAT, 
	leisure_time FLOAT, 
	rooms_per_person Float
);

SELECT * FROM qol;

CREATE TABLE health ( 
	country VARCHAR (255) PRIMARY KEY,
	healthy_life_expectancy FLOAT, 
	self_reported_health FLOAT,
	freedom_to_make_life_choices FLOAT
);
SELECT * FROM health;
