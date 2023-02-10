
/*
 This query is being used to filter data from a script before importing fields into Knack (CRM). 
 The names of the column dosnt matter because you can map them to the names in the CRM.

 */

CREATE temp table
	MapinClean_TEMP as 
Select 
	TRIM("First Name") , TRIM("Last Name"), TRIM("Age"),  TRIM("Email"),  TRIM("Phone"), TRIM("Date"), TRIM("Program Year"),
	TRIM("Gender"), TRIM("Race/Ethnicity_Clean"), TRIM("Location_Clean"), TRIM("Workshop"), TRIM("Home School"),
	TRIM("Class") 
FROM
	MAPin_Student_Data_2017_2023;


DROP TABLE MapinClean_TEMP;

-- Select statment is cluttered youll need to put the trim statement in double quotes and the original column in double double quotes
  -- Will need to create aliases for code clarity 
/* 
 
SELECT
	"TRIM(""Home School"")", COUNT("TRIM(""Home School"")")
FROM
	MapinClean_TEMP
GROUP BY
	"TRIM(""Home School"")"
ORDER BY
	COUNT("TRIM(""Home School"")") DESC;

*/
	
