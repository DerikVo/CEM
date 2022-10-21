

/*
Online catealog used as a referience to rename classes
 https://www.metroed.net/Domain/103
 
 Detailed catelog found here
 https://www.metroed.net/domain/48
 
 Header of page:
 UC "a-g" COURSE APPROVAL
*/

/* 
UPDATE
	Mapin
SET
	"Class / Teacher" = Trim(Proper("Class / Teacher"));

*/


SELECT
	DISTINCT("Class / Teacher")
FROM
	Mapin
ORDER BY
	"Class / Teacher";

--App Development (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%APP%"
		AND
		"Class / Teacher" LIKE "%(pm)%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Mobile App Design & Computer Coding (PM)"
	WHERE
			"Class / Teacher" LIKE "%APP%"
		AND
		"Class / Teacher" LIKE "%(pm)%";

--App Development (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%APP%"
		AND
		"Class / Teacher" LIKE "%(am)%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Mobile App Design & Computer Coding (AM)"
	WHERE
			"Class / Teacher" LIKE "%APP%"
		AND
		"Class / Teacher" LIKE "%(am)%";
		
--App Development (not specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%APP%"
		AND
		"Class / Teacher" NOT LIKE "%(am)%"
		AND
		"Class / Teacher" NOT LIKE "%(pm)%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Mobile App Design & Computer Coding (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%APP%"
		AND
		"Class / Teacher" NOT LIKE "%(am)%"
		AND
		"Class / Teacher" NOT LIKE "%(pm)%";

--Auto body Refinishing (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher"  LIKE "%refin%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Auto Body Refinishing (AM)"
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher"  LIKE "%refin%";

--Auto body Repair (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%repair%"
		AND
		"Class / Teacher" NOT LIKE "%AM%"
		AND
		"Class / Teacher"  NOT LIKE "%PM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Auto Body Repair (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%repair%"
		AND
		"Class / Teacher" NOT LIKE "%AM%"
		AND
		"Class / Teacher"  NOT LIKE "%PM%";

	
	--Auto body Repair (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%repair%"
		AND
		"Class / Teacher" LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Auto Body Repair (AM)"
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%repair%"
		AND
		"Class / Teacher" LIKE "%AM%";

--Auto body Repair (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%repair%"
		AND
		"Class / Teacher" LIKE "%PM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Auto Body Repair (AM)"
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%repair%"
		AND
		"Class / Teacher" LIKE "%PM%";

--Automotive Services (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%automo%"
		AND
		"Class / Teacher" LIKE "%service%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Automotive Services (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%service%";
	
--Construction Technology (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%con%"
		AND
		"Class / Teacher" NOT LIKE "%pm%"
		AND
		"Class / Teacher"  NOT LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Construction Technology (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%con%"
		AND
		"Class / Teacher" NOT LIKE "%pm%"
		AND
		"Class / Teacher"  NOT LIKE "%AM%";

--Culinary Arts (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%cul%"
		AND
		"Class / Teacher" NOT LIKE "%pm%"
		AND
		"Class / Teacher"  NOT LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Construction Technology (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%con%"
		AND
		"Class / Teacher" NOT LIKE "%pm%"
		AND
		"Class / Teacher"  NOT LIKE "%AM%";

--Culinary Arts (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%cul%"
		AND
		"Class / Teacher" LIKE "%PM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Culinary Arts (PM)"
	WHERE
		"Class / Teacher" LIKE "%cul%"
		AND
		"Class / Teacher" LIKE "%PM%";

--Culinary Arts (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%cul%"
		AND
		"Class / Teacher"  LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Culinary Arts (AM)"
	WHERE
		"Class / Teacher" LIKE "%cul%"
		AND
		"Class / Teacher" LIKE "%AM%";

--Electrical Maintenance (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%elec%"
		AND
		"Class / Teacher"  NOT LIKE "%PM%"
		AND
		"Class / Teacher" NOT LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Electrical Maintenance (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%elec%"
		AND
		"Class / Teacher"  NOT LIKE "%PM%"
		AND
		"Class / Teacher" NOT LIKE "%AM%";

--Electrical Maintenance (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%elec%"
		AND
		"Class / Teacher" LIKE "%PM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Electrical Maintenance (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%elec%"
		AND
		"Class / Teacher" LIKE "%PM%";

--Electrical Maintenance (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%elec%"
		AND
		"Class / Teacher" LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Electrical Maintenance (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%elec%"
		AND
		"Class / Teacher" LIKE "%AM%";
