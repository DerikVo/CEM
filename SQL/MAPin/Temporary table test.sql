
/*
 This query is being used to clean data before importing fields into Knack (CRM). 
 The names of the column dosnt matter because you can map them to the names in the CRM.
  

 */
-- Remove white space and normalize casing
UPDATE
	MAPin_Student_Data 
SET
	"First Name" = TRIM(PROPER("First Name")),
	"Last Name" = TRIM(PROPER("Last Name")),
	"Age" = TRIM(PROPER("Age")),
	"Email" = TRIM(PROPER("Email")),
	"Phone" = TRIM(PROPER("Phone")),
	"Date" = TRIM(PROPER("Date")),
	"Program Year" = TRIM(PROPER("Program Year")),
	"Gender" = TRIM(PROPER("Gender")),
	"Race/Ethnicity_Clean" = TRIM(PROPER("Race/Ethnicity_Clean")),
	"Workshop" = TRIM(PROPER("Workshop")),
	"Home School"  = TRIM(PROPER("Home School")),
	"Class" = TRIM(PROPER("Class"));
	
--Temporary Table
	CREATE temp table
		MapinClean_TEMP as 
	Select 
		"First Name", "Last Name", "Age","Email","Phone", "Date", "Program Year",
		"Gender", "Race/Ethnicity_Clean", "Location_Clean", "Workshop", "Home School",
		"Class"
	FROM
		MAPin_Student_Data;
--Final report
	SELECT
		*
	FROM
		MapinClean_TEMP;

--Removes temporary table from memory, but should do so automatically once session closes
DROP TABLE MapinClean_TEMP;

-- Checking for variations in spelling and the count of each school.
SELECT
	"Home School", COUNT("Home School")
FROM
	MapinClean_TEMP
GROUP BY
	"Home School"
ORDER BY
	COUNT("Home School") ASC;
	
--Cleaning Variations
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		GROUP BY 
			"Home School"
		ORDER BY
			COUNT("Home School") ASC;
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Decline to state"
		WHERE
			"Home School" LIKE "no%"
			OR
			"Home School" LIKE "%yeah%";
	
		
	-- Not applicable
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%n/%"
			OR
			"Home School"  LIKE "%/a%"
			OR
			"Home School" LIKE "%not%"
			OR
			"Home School" LIKE "Na%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Not applicable"
		WHERE
			"Home School" LIKE "%n/%"
			OR
			"Home School"  LIKE "%/a%"
			OR
			"Home School" LIKE "%not%"
			OR
			"Home School" LIKE "Na%";
		
	-- Abraham Lincoln High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%inc%"
			OR
			"Home School" LIKE "%abraham%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Abraham Lincoln High School"
		WHERE
			"Home School" LIKE "%inc%"
			OR
			"Home School"  LIKE "%abraham%"; --a similar school called Branham needs to be manually compared
	
	--Adrian C Wilcox High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%ilcox%"
			OR
			"Home School"  LIKE "%drian%"
		GROUP BY
			"Home School";
	UPDATE 
			MapinClean_TEMP
		SET
			"Home School" = "Adrian C Wilcox High School"
		WHERE
			"Home School" LIKE "%ilcox%"
			OR
			"Home School"  LIKE "%drian%";
		
	--Andrew P. Hill High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%ndrew%"
		GROUP BY
			"Home School";	
	UPDATE 
			MapinClean_TEMP
		SET
			"Home School" = "Andrew P. Hill High School"
		WHERE
			"Home School" LIKE "%ndrew%";
		
	--Apollo High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%pollo%"
		GROUP BY
			"Home School";
	UPDATE 
			MapinClean_TEMP
		SET
			"Home School" = "Apollo High School"
		WHERE
			"Home School" LIKE "%pollo%";
		
	--Boynton High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%Boy%"
		GROUP BY
			"Home School";
	UPDATE 
			MapinClean_TEMP
		SET
			"Home School" = "Boynton High School"
		WHERE
			"Home School" LIKE "%Boy%";
		
	--Branham High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%Branham%"
			OR
			"Home School" = "Brannam High School"
		GROUP BY
			"Home School";
		
	UPDATE 
			MapinClean_TEMP
		SET
			"Home School" = "Branham High School"
		WHERE
			"Home School" LIKE "%Branham%"
			OR
			"Home School" = "Brannam High School"; --User Typo
			
	--Broadway High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%Broadway%"
		GROUP BY
			"Home School";
	UPDATE 
			MapinClean_TEMP
		SET
			"Home School" = "Broadway High School"
		WHERE
			"Home School" LIKE "%Broadway%";
		
	--Calaveras Hills High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%Cala%"
			OR
			"Home School"  = "Cal Hills High School"
		GROUP BY
			"Home School";
	UPDATE 
			MapinClean_TEMP
		SET
			"Home School" = "Calaveras Hills High School"
		WHERE
			"Home School" LIKE "%Cala%"
			OR
			"Home School"  = "Cal Hills High School";
	
	--Calero High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%Calero%"
		GROUP BY
			"Home School";
	UPDATE 
			MapinClean_TEMP
		SET
			"Home School" = "Calero High School"
		WHERE
			"Home School" LIKE "%Calero%";
	
	--Del Mar High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		MapinClean_TEMP
	WHERE
		"Home School" LIKE "Del%"
		GROUP BY
			"Home School";
	
	UPDATE 
			MapinClean_TEMP
		SET
			"Home School" = "Del Mar High School"
		WHERE
			"Home School" LIKE "Del%";		
	--Evergreen Valley High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%Evergreen%"
			AND
			"Home School" LIKE "%h%"
			OR
			"Home School" LIKE "EVH%" -- assuming EVHS is the abbreviation of evergreen valley high shool
		GROUP BY
			"Home School";
		
	UPDATE 
			MapinClean_TEMP
		SET
			"Home School" = "Evergreen Valley High School"
		WHERE
			"Home School" LIKE "%Evergreen%"
			AND
			"Home School" LIKE "%h%"
			OR
			"Home School" LIKE "EVH%";
			
	
	--Evergreen Valley Community College
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%Ever%"
			AND
			"Home School" LIKE "%com%"
		GROUP BY
			"Home School";
	UPDATE 
			MapinClean_TEMP
		SET
			"Home School" = "Evergreen Valley Community College"
		WHERE
			"Home School" LIKE "%Ever%"
			AND
			"Home School" LIKE "%com%";
	
	--Henry T Gunderson High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%Gun%"
			OR
			"Home School" LIKE "%under%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Henry T Gunderson High School"
		WHERE
			"Home School" LIKE "%Gun%"
			OR
			"Home School" LIKE "%under%";
	
	--Foothill High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%Foothill%"
		GROUP BY
			"Home School";
	UPDATE 
			MapinClean_TEMP
		SET
			"Home School" = "Foothill High School"
		WHERE
			"Home School" LIKE "%Foothill%";
		
	--Independence High School 
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%indep%"
			AND
			"Home School"  NOT LIKE "%tudies"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Independence High School"
		WHERE
			"Home School" LIKE "%indep%"
			AND
			"Home School"  NOT LIKE "%tudies";
	
	--James Lick High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%lick%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "James Lick High School"
		WHERE
			"Home School" LIKE "%lick%";
	--Job Corps

/*	 
	 Do not run yet. Job corps listing spans across different cities.
	 Need approval before listing all locations as just "one job corp"
	 
	 	SELECT
	 		"Home School"
	 	FROM
	 		MapinClean_TEMP
	 	WHERE
	 		"Home School" LIKE "%ob%"
			AND
			"Home School" NOT LIKE "%OYA%"; 
		UPDATE
			MapinClean_TEMP
			SET
				"Home School" = "Job Corps"
			WHERE
				"Home School" LIKE "%ob %"
				AND
				"Home School" NOT LIKE "%OYA%"; 

*/
	--Leigh High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%lei%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Leigh High School"
		WHERE
			"Home School" LIKE "%lei%";
	
	--Leland High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%leland%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Leland High School"
		WHERE
			"Home School" LIKE "%leland%";
			
	--Liberty (Alternative) High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%lib%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Liberty (Alternative) High School"
		WHERE
			"Home School" LIKE "%lib%";
	
	--Los Gatos High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%gatos%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Los Gatos High School"
		WHERE
			"Home School" LIKE "%gatos%";
	
	--Lynbrook High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%lyn%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Lynbrook High School"
		WHERE
			"Home School" LIKE "%lyn%";
	
	--Milpitas High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%milp%"
			AND
			"Home School" NOT LIKE "OYA%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Milpitas High School"
		WHERE
			"Home School" LIKE "%milp%"
			AND
			"Home School" NOT LIKE "OYA%";
	
	--Miller Middle School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%mil%"
			AND
			"Home School" LIKE "%middle%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Miller Middle School"
		WHERE
			"Home School" LIKE "%mil%"
			AND
			"Home School" LIKE "%middle%";	
		
	--Mount Pleasant High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			("Home School" LIKE "%pleasant%"
			OR
			"Home School" LIKE "%mt%")
			AND
			"Home School" NOT LIKE "%hill%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Mount Pleasant High School"
		WHERE
			("Home School" LIKE "%pleasant%"
			OR
			"Home School" LIKE "%mt%")
			AND
			"Home School" NOT LIKE "%hill%";
	
	--New Valley High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%new%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "New Valley High School"
		WHERE
			"Home School" LIKE "%new%";
	
	--Oak Grove High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%oak%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Oak Grove High School"
		WHERE
			"Home School" LIKE "%oak%";
		
	--Opportunity Youth Academy
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%opp%"
			OR
			"Home School" LIKE "%OYA%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Opportunity Youth Academy"
		WHERE
			"Home School" LIKE "%opp%"
			OR
			"Home School" LIKE "%OYA%";
	
	--Pegasus High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%peg%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Pegasus High School"
		WHERE
			"Home School" LIKE "%peg%";
	--Pheonix High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%ph%"
			AND
			"Home School" LIKE "%high%"
			AND
			"Home School" NOT LIKE "%uni%"
			AND
			"Home School" NOT LIKE "santa%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Phoenix High School"
		WHERE
			"Home School" LIKE "%ph%"
			AND
			"Home School" LIKE "%high%"
			AND
			"Home School" NOT LIKE "%uni%"
			AND
			"Home School" NOT LIKE "santa%";
	
		
		
	--Piedmont Hills High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%pied%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Piedmont Hills High School"
		WHERE
			"Home School" LIKE "%pied%";
	
	--Pioneer High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%pio%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Pioneer High School"
		WHERE
			"Home School" LIKE "%pio%";
	
	--Prospect High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%pro%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Prospect High School"
		WHERE
			"Home School" LIKE "%pro%";
		
	--San Jose High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%jos%"
			AND
			"Home School" NOT LIKE "%corps%"
			AND
			"Home School" NOT LIKE "%Jesuit%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "San Jose High School"
		WHERE
			"Home School" LIKE "%jos%"
			AND
			"Home School" NOT LIKE "%corps%"
			AND
			"Home School" NOT LIKE "%Jesuit%";
	
	--William C. Overfelt High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%over%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "William C. Overfelt High School"
		WHERE
			"Home School" LIKE "%over%";
	--Santa Clara High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%Clara%"
			AND
			"Home School" NOT LIKE "%community%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Santa Clara High School"
		WHERE
			"Home School" LIKE "%Clara%"
			AND
			"Home School" NOT LIKE "%community%";
	
	--Santa Teresa High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%Tere%"
			AND
			"Home School" NOT LIKE "%pho%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Santa Teresa High School"
		WHERE
			"Home School" LIKE "%Tere%"
			AND
			"Home School" NOT LIKE "%pho%";
	
	--Saratoga High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%sara%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Saratoga High School"
		WHERE
			"Home School" LIKE "%sara%";
	--Silver Creek High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%silv%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Silver Creek High School"
		WHERE
			"Home School" LIKE "%silv%";
	
	--Westmont High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%westm%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Westmont High School"
		WHERE
			"Home School" LIKE "%westm%";
	
	--Willow Glen High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%willow%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Willow Glen High School"
		WHERE
			"Home School" LIKE "%willow%";
	
	--Wilson High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%wils%"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Wilson High School"
		WHERE
			"Home School" LIKE "%wils%";
	--Yerba Buena High School
	SELECT
		DISTINCT("Home School") ,Count("Home School") AS 'Count'
		FROM
			MapinClean_TEMP
		WHERE
			"Home School" LIKE "%buena%"
			OR
			"Home School"
		GROUP BY
			"Home School";
	UPDATE
			MapinClean_TEMP
		SET
			"Home School" = "Yerba Buena High School"
		WHERE
			"Home School" LIKE "%buena%";

