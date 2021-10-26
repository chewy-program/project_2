DROP TABLE IF EXISTS oecd_international; 
DROP TABLE IF EXISTS world_life; 

CREATE TABLE oecd_international (
	country VARCHAR PRIMARY KEY, 
	Dwellings_without_basic_facilities FLOAT,
	Housing_expenditure FLOAT,
	Rooms_per_person FLOAT,
	Household_net_adjusted_disposable_income FLOAT,
	Household_net_wealth FLOAT,
	Labour_market_insecurity FLOAT,
	Employment_Rate INTEGER, 
	Long_term_unemployment_rate FLOAT,
	Personal_earnings FLOAT,
	Quality_of_support_network FLOAT,
	Educational_attainment FLOAT,
	Student_skills FLOAT,
	Years_in_education FLOAT,
	Air_pollution INTEGER,
	Water_Quality INTEGER,
	Stakeholder_engagement_for_developing_regulations FLOAT,
	Voter_turnout FLOAT,
	Life_Expectancy FLOAT,
	Self_reported_health FLOAT, 
	Life_satisfaction FLOAT, 
	Feeling_safe_walking_alone_at_night FLOAT,
	Homicide_rate FLOAT,
	Employees_working_very_long_hours FLOAT, 
	Time_devoted_to_leisure_and_personal_care FLOAT
);

COPY oecd_international
FROM 'C:\Users\Zach\OneDrive\Documents\Uni\Monash\project_2\Resources\better_life_index_final.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM oecd_international;

CREATE TABLE world_life (
	Country VARCHAR PRIMARY KEY,
	Regional_indicator VARCHAR, 
	Ladder_score FLOAT,
	Standard_error_of_ladder_score FLOAT,
	upperwhisker FLOAT,
	lowerwhisker FLOAT,
	Logged_GDP_per_capita FLOAT,
	Social_support FLOAT,
	Healthy_life_expectancy FLOAT,
	Freedom_to_make_life_choices FLOAT,
 	Generosity FLOAT,
	Perceptions_of_corruption FLOAT,
	Ladder_score_in_Dystopia FLOAT,
	Explained_by__Log_GDP_per_capita FLOAT,
	Explained_by__Social_support FLOAT,
	Explained_by__Healthy_life_expectancy FLOAT,
	Explained_by__Freedom_to_make_life_choices FLOAT,
	Explained_by__Generosity FLOAT,
	Explained_by__Perceptions_of_corruption FLOAT,
	Dystopia__residual FLOAT
);

COPY world_life
FROM 'C:\Users\Zach\OneDrive\Documents\Uni\Monash\project_2\Resources\world-happiness-report-2021.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM world_life;
