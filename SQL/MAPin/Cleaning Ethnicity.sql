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
		DISTINCT ("Ethnicity 1"), COUNT("Ethnicity 1")
		FROM
			Mapin
		GROUP BY
			"Ethnicity 1"
		ORDER  BY
			"Ethnicity 1";
-- African America
	SELECT
		DISTINCT "Ethnicity 1", COUNT("Ethnicity 1"), "Ethnicity 2", "Ethnicity 3", "Ethnicity 4" 
		FROM
			Mapin
		WHERE
			("Ethnicity 1"  LIKE "%african%"
			OR
			"Ethnicity 1"  LIKE "Black%")
			AND
			"Ethnicity 2" IS NULL
		GROUP BY
			"Ethnicity 1";
	UPDATE 
		Mapin
		SET
			"Ethnicity 1" = "Black"
	
		
		
/*
Cleaning and categorizing ethnicities into aggregated
groups. Will have additional colomns for specific ethnicities 
 */
--Mixed
	SELECT
		DISTINCT ("Ethnicity 1"),  COUNT("Ethnicity 1"), "Ethnicity 2", "Ethnicity 3", "Ethnicity 4"
		FROM
			Mapin
		WHERE
			("Ethnicity 1" NOT NULL
			AND
			"Ethnicity 2" NOT NULL
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
	UPDATE
		Mapin
		SET
		"Ethnicity 3" = "Ethnicity 1",
		"Ethnicity 1"  = "Mixed Race"
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
