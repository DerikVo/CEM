
-- Identifies Unique Gender entries
SELECT
	DISTINCT("Gender")
FROM
	Mapin;
/*GROUP BY
	"Gender"; */ --group by only functions with a WHERE statement

UPDATE
	Mapin
SET
	Gender = Proper(Trim(Gender));

-- Female
SELECT
	DISTINCT
		"Gender", count(Gender)
	FROM
		Mapin
	WHERE
		"Gender" LIKE "F%"
		AND
		Gender NOT LIKE "fl%"
	GROUP BY
		"gender";

UPDATE
	Mapin
	SET
		"Gender" = "Female"
	WHERE
		"Gender" LIKE "F%"
		AND
		Gender NOT LIKE "fl%";
--Male
	
SELECT
	DISTINCT
		"Gender", count(Gender)
	FROM
		Mapin
	WHERE
		"Gender" LIKE "m%"
		AND
		"Gender" NOT LIKE "fe%"
		AND
		"Gender" NOT LIKE "%demi%"
	GROUP BY
		"gender";

UPDATE
	Mapin
	SET
		"Gender" = "Male"
	WHERE
		"Gender" LIKE "m%"
		AND
		"Gender" NOT LIKE "fe%"
		AND
		"Gender" NOT LIKE "%demi%";
	

--Non-Binary

SELECT
	DISTINCT
		"Gender", count(Gender)
	FROM
		Mapin
	WHERE
		"Gender" LIKE "no%"
	GROUP BY
		"gender";

UPDATE
	Mapin
	SET
		"Gender" = "Non-Binary"
	WHERE
		"Gender" LIKE "no%";

--Gender-Fluid

SELECT
	DISTINCT
		"Gender", count(Gender)
	FROM
		Mapin
	WHERE
		"Gender" LIKE "%flu%"
	GROUP BY
		"gender";

UPDATE
	Mapin
	SET
		"Gender" = "Gender-Fluid"
	WHERE
		"Gender" LIKE "%flu%";
	

--Prefer Not To State

SELECT
	DISTINCT
		"Gender", count(Gender)
	FROM
		Mapin
	WHERE
		"Gender" LIKE "%prefer%"
		OR
		"Gender" LIKE "Decline%"
		OR
		"Gender" LIKE "%don%"
	GROUP BY
		"gender";

UPDATE
	Mapin
	SET
		"Gender" = "Prefer Not To State"
	WHERE
		"Gender" LIKE "%prefer%"
		OR
		"Gender" LIKE "Decline%"
		OR
		"Gender" LIKE "%don%";

--Not applicable

SELECT
	DISTINCT
		"Gender", count(Gender)
	FROM
		Mapin
	WHERE
		"Gender" LIKE "N/%"
		OR
		"Gender" = "NA"
	GROUP BY
		"gender";

UPDATE
	Mapin
	SET
		"Gender" = "Not applicable"
	WHERE
		"Gender" LIKE "N/%"
		OR
		"Gender" = "NA";

--NULL; for invalid entries

SELECT
	DISTINCT
		"Gender", count(Gender)
	FROM
		Mapin
	WHERE
		"Gender" LIKE "%yes%"
		OR
		"Gender" LIKE "%asian%"
	GROUP BY
		"gender";

UPDATE
	Mapin
	SET
		"Gender" = NULL
	WHERE
		"Gender" LIKE "%yes%"
		OR
		"Gender" LIKE "%asian%";


