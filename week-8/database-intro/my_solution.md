#8.4 Introduction to Database Schemas and SQL

## Release 4: Schema Design


### Play around with Schema Designer a bit to get used to it before moving on. Duplicate the states and regions tables above. Be sure to connect them properly!

![states and regions tables](states_regs.png)

## Release 5: SELECTing data from a database

### Create SQL Queries for the following: (Make sure all queries end with a semi-colon, if you forget, just enter it on the next line.)

####1. Select all data for all states.

	SELECT *
	FROM states;

####2. Select all data for all regions.

	SELECT *
	FROM regions;

####3. Select the state_name and population for all states.

	SELECT state_name, population
	FROM states;

####4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.

	SELECT state_name, population
	FROM states
	ORDER BY population DESC;
   
####5. Select the state_name for the states in region 7.
   
	SELECT state_name
	FROM states
	WHERE region_id = 7;

####6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.

	SELECT state_name, population_density
	FROM states
	WHERE population_density > 50
	ORDER BY population_density;
	
####7. Select the state_name for states with a population between 1 million and 1.5 million people.

	SELECT state_name
	FROM states
	WHERE population >= 1000000
	AND population <= 1500000;
	
####8. Select the state_name and region_id for states ordered by region in ascending order.

	SELECT state_name, region_id
	FROM states
	ORDER BY region_id;
	
####9. Select the region_name for the regions with "Central" in the name.

	SELECT region_name
	FROM regions
	WHERE region_name LIKE '%Central%'
	
####10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).

	SELECT region_name, state_name
	FROM regions, states
	WHERE regions.id = states.region_id
	ORDER BY regions.id;
	
## Release 6: Your Own Schema

###Make a simple schema design in Schema Designer to include a persons and outfits table. Be sure to connect them. Create at least 4 columns (with general types) for each table. One of the fields in the outfits table should refer to the id in the persons table. Reference the conventions file to read about database naming conventions. 

![persons and outfits tables](persons_outfits.png)

## Release 7: Reflect

####What are databases for?

####What is a one-to-many relationship?

####What is a primary key? What is a foreign key? How can you determine which is which?

####How can you select information out of a SQL database? What are some general guidelines for that?



