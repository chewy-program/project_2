# ETL_Project
Project_2
ETLE process: 
Loaded in two csv files into resources

Loaded into the notebook ETLE_final

Performed an Inner join on the files with the OECD csv to put all of the data together in the same place 

Connected the SQL engine using SQL alchemy to connect to postgresql 

Password will be need to be added in to connect the engine 

Created SQL file ETLE.SQL 

Loaded the information used for data analysis into PostgreSQL
Tables: 
	-country
	-economy
	-employment
	-environment
	-health
	-QOL

Breakdown of tasks: 

Questions to answer (high level):
Looking at OECD countriers, we want to determine if a good Work Life Balance can improve health as well as have a functioning economy 

	1. How does Work Life Balance effect overall health
		a. Work Life Balance versus life expectancy and self-reported health Miley
		b. Work Life Balance versus Social support and time devoted to leisure Miley 
		c. Work Life Balance versus Happiness index Mime
		d. Work Life Balance versus Freedom Mime
	2. How does Work Life Balance effect the Economy 
		a. Work Life Balance vs GDP Ishaan
		b. Work Life Balance vs Corruption Ishaan
	3. Is the quality of Environment related to Health and happiness? 
		a. Environment vs Health Zach 
		b. Environment vs Happiness Zach 
		
		
		remove duplicates
		fill NA as 0 

	place into tables postgreSQL - Together 
		-SQL query 
		-SQL 
	
	Use table data to create charts Python
	Use charts to draw conclusions Python
	analysis  words
	output tables into new csvs python 
		
