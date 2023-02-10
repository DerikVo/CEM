SELECT
	*
FROM
	Mapin;
/*
Data from the ethnicity column was split using a python script. 
Data was originally cleaned in excel to standard the delimiters into commas. 
After ward the script would split based on those commas into new columns. 
Process was done in Python to reduce strain on the spread sheet software.

By splitting the entires, the process of cleaning should be easier.
 
 As of 20230125 the goal of this script is to cleanup the variations.
 After variations are cleaned then the data will be imported into the database
 */
-- Identifies Ethnicities from Pyhon script
	SELECT
		Column1, "Ethnicity 1" , "Ethnicity 2" , "Ethnicity 3" , "Ethnicity 4" 
		FROM
			Mapin;
-- Trims and Proper cases
	UPDATE
		Mapin
	SET
	"Ethnicity 1"  = TRIM(PROPER("Ethnicity 1")),
	"Ethnicity 2"  = TRIM(PROPER("Ethnicity 2")),
	"Ethnicity 3"  = TRIM(PROPER("Ethnicity 3")),
	"Ethnicity 4"  = TRIM(PROPER("Ethnicity 4"));
/*
 Cleaning individual coloumns, so they can be aggregated and categorized later
 */

--Finds unique entries for Each coloumn 1
	SELECT
		DISTINCT ("Ethnicity 1"), COUNT("Ethnicity 1") as 'count'
		FROM
			Mapin
		GROUP BY
			"Ethnicity 1"
		ORDER  BY
			count desc;
--Checks where condition  before updating
	SELECT 
		"Ethnicity 1", count("Ethnicity 1")
		FROM
			Mapin
		WHERE
			"Ethnicity 1" = "Filipino"
			"Ethnicity 1";
	
--Manually edit entires
	UPDATE
		Mapin
	SET
		"Ethnicity 1" = "Latino"
	WHERE
		"Ethnicity 1" = "Latino/a";
-- African America
	SELECT
		DISTINCT "Ethnicity 1", COUNT("Ethnicity 1")
		FROM
			Mapin
		WHERE
			("Ethnicity 1"  LIKE "%african%"
			AND
			"Ethnicity 1" LIKE "%ameri%")
			OR
			("Ethnicity 1"  LIKE "Black%"
			AND
			"Ethnicity 1"  NOT LIKE "%whi%")
		GROUP BY
			"Ethnicity 1";
	UPDATE 
		Mapin
		SET
			"Ethnicity 1" = "Black"
		WHERE
			("Ethnicity 1"  LIKE "%african%"
			AND
			"Ethnicity 1" LIKE "%ameri%")
			OR
			("Ethnicity 1"  LIKE "Black%"
			AND
			"Ethnicity 1"  NOT LIKE "%whi%")
/*
Cleaning and categorizing ethnicities into aggregated
groups. Will have additional colomns for specific ethnicities 

This section will be put on hold for now
 */
			
			/*
--Mixed
	SELECT
		DISTINCT ("Ethnicity 1"),  COUNT("Ethnicity 1"), "Ethnicity 2", "Ethnicity 3", "Ethnicity 4"
		FROM
			Mapin
		WHERE
			("Ethnicity 1" NOT NULL
			AND
			("Ethnicity 2" NOT NULL
			AND
			"Ethnicity 1" != "Asian")
			AND
			"Ethnicity 3" IS NULL
			AND 
			"Ethnicity 4" IS NULL)
			AND
			(("Ethnicity 1" NOT LIKE "%Lat%"
			AND
			"Ethnicity 1" NOT LIKE "%His%")
			AND
			("Ethnicity 2" NOT LIKE "%lat%"
			AND
			"Ethnicity 2"  NOT LIKE "%his%"))
		GROUP BY
			"Ethnicity 1"
		ORDER  BY
			"Ethnicity 1";
	--Moving ethnicity 1 to 3, and updating 1 to mixed Race
		UPDATE
			Mapin
			SET
			"Ethnicity 3" = "Ethnicity 1",
		WHERE
				("Ethnicity 1" NOT NULL
				AND
				("Ethnicity 2" NOT NULL
				AND
				"Ethnicity 1" != "Asian")
				AND
				"Ethnicity 3" IS NULL
				AND 
				"Ethnicity 4" IS NULL)
				AND
				(("Ethnicity 1" NOT LIKE "%Lat%"
				AND
				"Ethnicity 1" NOT LIKE "%His%")
				AND
				("Ethnicity 2" NOT LIKE "%lat%"
				AND
				"Ethnicity 2"  NOT LIKE "%his%"));
	--Run "Ethnicity 3" = "Ethnicity 1" First, so their second race is not lost
		UPDATE
			Mapin
			SET
			"Ethnicity 1" = "Mixed Race",
		WHERE
				("Ethnicity 1" NOT NULL
				AND
				("Ethnicity 2" NOT NULL
				AND
				"Ethnicity 1" != "Asian")
				AND
				"Ethnicity 3" IS NULL
				AND 
				"Ethnicity 4" IS NULL)
				AND
				(("Ethnicity 1" NOT LIKE "%Lat%"
				AND
				"Ethnicity 1" NOT LIKE "%His%")
				AND
				("Ethnicity 2" NOT LIKE "%lat%"
				AND
				"Ethnicity 2"  NOT LIKE "%his%"));
				
				*/
--Asian
	SELECT
		DISTINCT ("Ethnicity 1"),  COUNT("Ethnicity 1"), "Ethnicity 2", "Ethnicity 3", "Ethnicity 4"
		FROM
			Mapin
		WHERE
			"Ethnicity 1" LIKE "%asian%"
			AND
			"Ethnicity 1"  NOT LIKE "%cau%"
		GROUP BY
			"Ethnicity 1"
		ORDER  BY
			"Ethnicity 1";
	--Vietnamese
		SELECT
			DISTINCT ("Ethnicity 1"),  COUNT("Ethnicity 1"), "Ethnicity 2", "Ethnicity 3", "Ethnicity 4"
			FROM
				Mapin
			WHERE
				"Ethnicity 1" LIKE "viet%"
			GROUP BY
				"Ethnicity 1"
			ORDER  BY
				"Ethnicity 1";
		UPDATE
			Mapin
			SET
			"Ethnicity 1" = "Asian",
			"Ethnicity 2"  = "Vietnamese"
			WHERE 
			"Ethnicity 1" LIKE "viet%";
	--half viet half laos
		UPDATE
			Mapin
		SET
			"Ethnicity 1" = "Asian",
			"Ethnicity 2"  = "Laos",
			"Ethnicity 3" = "Vietnamese"
		WHERE 
			"Ethnicity 1" LIKE "asian%"
			AND
			"Ethnicity 1" LIKE "%viet%"
			AND
			"Ethnicity 2" LIKE "%laos%";
	--Filipino
		SELECT
			"Ethnicity 1", count("Ethnicity 1")
			FROM
				Mapin
			WHERE
				"Ethnicity 1"  LIKE "%fil%"
			GROUP BY
				"Ethnicity 1";
		UPDATE
			Mapin
			SET
			"Ethnicity 1"  = "Filipino"
			WHERE
			"Ethnicity 1"  LIKE  "%fil%";
--Latino/a
		SELECT
			"Ethnicity 1", count("Ethnicity 1")
			FROM
				Mapin
			WHERE
				"Ethnicity 1"  LIKE "%lat%"
				AND
				"Ethnicity 1" NOT LIKE "%non%"
			GROUP BY
				"Ethnicity 1";
		UPDATE
			Mapin
			SET
			"Ethnicity 1"  = "Latino/a"
			WHERE
				"Ethnicity 1"  LIKE "%lat%"
				AND
				"Ethnicity 1" NOT LIKE "%non%";
