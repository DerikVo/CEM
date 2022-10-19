SELECT
	*
FROM
	Mapin
ORDER BY
	Date Desc;

-- Identifies Unique schools entries, including variations
SELECT
	DISTINCT(TRIM("Home School"))
FROM
	Mapin
ORDER BY
	"Home School";

-- Identifies variations
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
FROM
	Mapin
WHERE
	"Home School" LIKE "%yer%"
GROUP BY
	"Home School"; -- since we're using an aggregate (count) we will need group by for all values to be displayed // will need to add group by to each query


/*
This portion edits the school naming variations, so it is more uniform. 
The Where statement should be tested in the above text to ensure the right entries are being changed.
The above queries all entries being changed. Some colleges will have similar name to highschools.
Check other pertient information to make an educated guess, and note change in documentation.
  
  */;
--Decline to state
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "Dec%";
 UPDATE
		Mapin
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
		Mapin
	WHERE
		"Home School" LIKE "%n/%"
		OR
		"Home School"  LIKE "%/a%"
		OR
		"Home School" LIKE "%not%";
UPDATE
		Mapin
	SET
		"Home School" = "Not applicable"
	WHERE
		"Home School" LIKE "%n/%"
		OR
		"Home School"  LIKE "%/a%";
	
-- Abraham Lincoln High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%incoln%"
		OR
		"Home School"  LIKE "%Abraham%";
UPDATE
		Mapin
	SET
		"Home School" = "Abraham Lincoln High School"
	WHERE
		"Home School" LIKE "%incoln%"
		OR
		"Home School"  LIKE "%Abraham%"; --a similar school called Branham needs to be manually compared

--Adrian C Wilcox High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%ilcox%"
		OR
		"Home School"  LIKE "%drian%";
UPDATE 
		Mapin
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
		Mapin
	WHERE
		"Home School" LIKE "%ndrew%";	
UPDATE 
		Mapin
	SET
		"Home School" = "Andrew P. Hill High School"
	WHERE
		"Home School" LIKE "%ndrew%";
	
--Apollo High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%pollo%";
UPDATE 
		Mapin
	SET
		"Home School" = "Apollo High School"
	WHERE
		"Home School" LIKE "%pollo%";
	
--Boynton High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%Boy%";
UPDATE 
		Mapin
	SET
		"Home School" = "Boynton High School"
	WHERE
		"Home School" LIKE "%Boy%";
	
--Branham High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%Branham%"
		OR
		"Home School" = "Brannam High School";
	
UPDATE 
		Mapin
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
		Mapin
	WHERE
		"Home School" LIKE "%Broadway%";
UPDATE 
		Mapin
	SET
		"Home School" = "Broadway High School"
	WHERE
		"Home School" LIKE "%Broadway%";
	
--Calaveras Hills High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%Cala%"
		OR
		"Home School"  = "Cal Hills High School";
UPDATE 
		Mapin
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
		Mapin
	WHERE
		"Home School" LIKE "%Calero%"
		OR
		"Home School"  LIKE "Call%";
UPDATE 
		Mapin
	SET
		"Home School" = "Calero High School"
	WHERE
		"Home School" LIKE "%Calero%"
		OR
		"Home School"  LIKE "Call%";

--Del Mar High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
FROM
	Mapin
WHERE
	"Home School" LIKE "Del%";

UPDATE 
		Mapin
	SET
		"Home School" = "Del Mar High School"
	WHERE
		"Home School" LIKE "Del%";
	
--Evergreen Valley High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%Evergreen%"
		AND
		"Home School" LIKE "%h%";
	
UPDATE 
		Mapin
	SET
		"Home School" = "Evergreen Valley High School"
	WHERE
		"Home School" LIKE "%Evergreen%"
		AND
		"Home School" LIKE "%h%";

--Evergreen Valley Community College
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%Ever%"
		AND
		"Home School" LIKE "%com%";
UPDATE 
		Mapin
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
		Mapin
	WHERE
		"Home School" LIKE "%Gun%";
UPDATE 
		Mapin
	SET
		"Home School" = "Henry T Gunderson High School"
	WHERE
		"Home School" LIKE "%Gun%"

--Foothill High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%Foothill%";
UPDATE 
		Mapin
	SET
		"Home School" = "Foothill High School"
	WHERE
		"Home School" LIKE "%Foothill%";
	
--Independence High School 
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%indep%"
		AND
		"Home School"  NOT LIKE "%tudies";
UPDATE
		Mapin
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
		Mapin
	WHERE
		"Home School" LIKE "%lick%";
UPDATE
		Mapin
	SET
		"Home School" = "James Lick High School"
	WHERE
		"Home School" LIKE "%lick%";
--Job Corps
/* 
 
 Do not run yet. Job corps listing spans across different cities.
 Need approval before listing all locations as just "one job corp"
 
	UPDATE
		Mapin
	SET
		"Home School" = "Job Corps"
	WHERE
		"Home School" LIKE "%ob %"; 
*/

--Leigh High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%lei%";
UPDATE
		Mapin
	SET
		"Home School" = "Leigh High School"
	WHERE
		"Home School" LIKE "%lei%";

--Leland High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%leland%";
UPDATE
		Mapin
	SET
		"Home School" = "Leland High School"
	WHERE
		"Home School" LIKE "%leland%";
		
--Liberty (Alternative) High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%lib%";
UPDATE
		Mapin
	SET
		"Home School" = "Liberty (Alternative) High School"
	WHERE
		"Home School" LIKE "%lib%";

--Los Gatos High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%gatos%";
UPDATE
		Mapin
	SET
		"Home School" = "Los Gatos High School"
	WHERE
		"Home School" LIKE "%gatos%";

--Lynbrook High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%lyn%";
UPDATE
		Mapin
	SET
		"Home School" = "Lynbrook High School"
	WHERE
		"Home School" LIKE "%lyn%";

--Milpitas High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%milp%"
		AND
		"Home School" NOT LIKE "OYA%";
UPDATE
		Mapin
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
		Mapin
	WHERE
		"Home School" LIKE "%mil%"
		AND
		"Home School" LIKE "%middle%";
UPDATE
		Mapin
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
		Mapin
	WHERE
		"Home School" LIKE "%pleasant%"
		AND
		"Home School" NOT LIKE "%hill%";
UPDATE
		Mapin
	SET
		"Home School" = "Mount Pleasant High School"
	WHERE
		"Home School" LIKE "%pleasant%"
		AND
		"Home School" NOT LIKE "%hill%";

--New Valley High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%new%";
UPDATE
		Mapin
	SET
		"Home School" = "New Valley High School"
	WHERE
		"Home School" LIKE "%new%";

--Oak Grove High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%oak%";
UPDATE
		Mapin
	SET
		"Home School" = "Oak Grove High School"
	WHERE
		"Home School" LIKE "%oak%";
	
--Opportunity Youth Academy
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%opp%";
UPDATE
		Mapin
	SET
		"Home School" = "Opportunity Youth Academy"
	WHERE
		"Home School" LIKE "%opp%";

--Pegasus High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%peg%";
UPDATE
		Mapin
	SET
		"Home School" = "Pegasus High School"
	WHERE
		"Home School" LIKE "%peg%";

--Piedmont Hills High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%pied%";
UPDATE
		Mapin
	SET
		"Home School" = "Piedmont Hills High School"
	WHERE
		"Home School" LIKE "%pied%";

--Pioneer High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%pio%";
UPDATE
		Mapin
	SET
		"Home School" = "Pioneer High School"
	WHERE
		"Home School" LIKE "%pio%";

--Prospect High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%pro%";
UPDATE
		Mapin
	SET
		"Home School" = "Prospect High School"
	WHERE
		"Home School" LIKE "%pro%";
	
--San Jose High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%jos%"
		AND
		"Home School" NOT LIKE "%corps%"
		AND
		"Home School" NOT LIKE "%Jesuit%";
UPDATE
		Mapin
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
		Mapin
	WHERE
		"Home School" LIKE "%over%";
UPDATE
		Mapin
	SET
		"Home School" = "William C. Overfelt High School"
	WHERE
		"Home School" LIKE "%over%";
--Santa Clara High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%Clara%"
		AND
		"Home School" NOT LIKE "%community%";
UPDATE
		Mapin
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
		Mapin
	WHERE
		"Home School" LIKE "%Tere%"
		AND
		"Home School" NOT LIKE "%pho%";
UPDATE
		Mapin
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
		Mapin
	WHERE
		"Home School" LIKE "%sara%";
UPDATE
		Mapin
	SET
		"Home School" = "Saratoga High School"
	WHERE
		"Home School" LIKE "%sara%";
--Silver Creek High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%silv%";
UPDATE
		Mapin
	SET
		"Home School" = "Silver Creek High School"
	WHERE
		"Home School" LIKE "%silv%";

--Westmont High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%westm%";
UPDATE
		Mapin
	SET
		"Home School" = "Westmont High School"
	WHERE
		"Home School" LIKE "%westm%";

--Willow Glen High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%willow%";
UPDATE
		Mapin
	SET
		"Home School" = "Willow Glen High School"
	WHERE
		"Home School" LIKE "%willow%";

--Wilson High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
		"Home School" LIKE "%wils%";
UPDATE
		Mapin
	SET
		"Home School" = "Wilson High School"
	WHERE
		"Home School" LIKE "%wils%";
--Yerba Buena High School
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
	FROM
		Mapin
	WHERE
	"Home School" LIKE "%buena%"
	OR
	"Home School" LIKE "yer%";
UPDATE
		Mapin
	SET
		"Home School" = "Yerba Buena High School"
	WHERE
		"Home School" LIKE "%buena%"
	OR
		"Home School" LIKE "yer%";


