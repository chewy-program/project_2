DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS employment;
DROP TABLE IF Exists environment; 
DROP TABLE IF EXISTS qol;
DROP TABLE IF Exists Health;

CREATE TABLE country ( 
	country VARCHAR (255) PRIMARY KEY,
	regional_indicator VARCHAR, 
	corruption FLOAT 
);

INSERT INTO country (country, regional_indicator, corruption)
SELECT country, regional_indicator, Explained_by__Perceptions_of_corruption
FROM world_life;


CREATE TABLE employment ( 
	country VARCHAR (255) PRIMARY KEY,
	employment_rate INT, 
	long_term_unemployment_rate INT,
	GDP FLOAT
); 

INSERT INTO employment (country, employment_rate, long_term_unemployment_rate, GDP)
SELECT o.country, o.employment_rate, o.long_term_unemployment_rate, w.Logged_GDP_per_capita
FROM oecd_international o
JOIN world_life w ON o.country = w.country; 

CREATE TABLE environment (
	country VARCHAR (255) PRIMARY KEY,
	air_pollution INT, 
	water_quality INT
);

INSERT INTO environment (country, air_pollution, water_quality)
SELECT country, air_pollution, water_quality
FROM oecd_international; 


CREATE TABLE qol ( 
	country VARCHAR (255) PRIMARY KEY,
	overworking_employees INT, 
	social_support INT, 
	leisure_time INT, 
	Freedom INT, 
	rooms_per_person Float, 
	satisfaction FLOAT, 
	Corruption FLOAT
);

INSERT INTO qol (country, overworking_employees, social_support, leisure_time, Freedom, rooms_per_person, satisfaction, Corruption)
SELECT o.country, o.Employees_working_very_long_hours, w.Social_support, o.Time_devoted_to_leisure_and_personal_care, w.Freedom_to_make_life_choices, o.Rooms_per_person, o.Life_satisfaction, w.Perceptions_of_corruption
FROM oecd_international o
JOIN world_life w ON o.country = w.country; 

CREATE TABLE Health ( 
	country VARCHAR (255) PRIMARY KEY,
	life_expectancy FLOAT, 
	self_reported_health INT
);

INSERT INTO Health (country, life_expectancy, self_reported_health)
SELECT country, life_expectancy, self_reported_health
FROM oecd_international