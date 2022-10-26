

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
		"Class / Teacher" = "Auto Body Repair (PM)"
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
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%service%"
		AND
		"Class / Teacher" NOT LIKE "%pm%"
		AND
		"Class / Teacher" NOT LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Automotive Services (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%service%"
		AND
		"Class / Teacher" NOT LIKE "%pm%"
		AND
		"Class / Teacher"  NOT LIKE "%AM%";

--Automotive Services (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%service%"
		AND
		"Class / Teacher" LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Automotive Services (AM)"
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%service%"
		AND
		"Class / Teacher" LIKE "%AM%";

--Automotive Services (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%service%"
		AND
		"Class / Teacher" LIKE "%PM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Automotive Services (PM)"
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher" LIKE "%service%"
		AND
		"Class / Teacher" LIKE "%PM%";
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
		"Class / Teacher" = "Culinary Arts (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%cul%"
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
		"Class / Teacher" = "Electrical Maintenance (PM)"
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
		"Class / Teacher" = "Electrical Maintenance (AM)"
	WHERE
		"Class / Teacher" LIKE "%elec%"
		AND
		"Class / Teacher" LIKE "%AM%";

--Medical Assisting (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%as%"
		AND
		"Class / Teacher"  LIKE "%me%"
		AND
		"Class / Teacher" NOT LIKE "%AM%"
		AND
		"Class / Teacher"  NOT LIKE "%pm%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Medical Assisting (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%as%"
		AND
		"Class / Teacher"  LIKE "%me%"
		AND
		"Class / Teacher" NOT LIKE "%AM%"
		AND
		"Class / Teacher"  NOT LIKE "%pm%";

--Medical Assisting (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%as%"
		AND
		"Class / Teacher"  LIKE "%me%"
		AND
		"Class / Teacher"  LIKE "%pm%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Medical Assisting (PM)"
	WHERE
		"Class / Teacher" LIKE "%as%"
		AND
		"Class / Teacher"  LIKE "%me%"
		AND
		"Class / Teacher"  LIKE "%pm%";

--Medical Assisting (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%as%"
		AND
		"Class / Teacher"  LIKE "%me%"
		AND
		"Class / Teacher"  LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Medical Assisting (AM)"
	WHERE
		"Class / Teacher" LIKE "%as%"
		AND
		"Class / Teacher"  LIKE "%me%"
		AND
		"Class / Teacher"  LIKE "%AM%";

--Fashion Design (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%fas%"
		AND
		"Class / Teacher" NOT LIKE "%AM%"
		AND
		"Class / Teacher" NOT LIKE "%pm%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Fashion Design (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%fas%"
		AND
		"Class / Teacher" NOT LIKE "%AM%"
		AND
		"Class / Teacher" NOT LIKE "%pm%";
--Fashion Design (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%fas%"
		AND
		"Class / Teacher" LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Fashion Design (AM)"
	WHERE
		"Class / Teacher" LIKE "%fas%"
		AND
		"Class / Teacher" LIKE "%AM%";
--Fashion Design (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%fas%"
		AND
		"Class / Teacher"  LIKE "%PM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Fashion Design (PM)"
	WHERE
		"Class / Teacher" LIKE "%fas%"
		AND
		"Class / Teacher"  LIKE "%PM%";
--Film & Video Production (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%film%"
		AND
		"Class / Teacher" NOT LIKE "%PM%"
		AND
		"Class / Teacher"  NOT LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Film & Video Production (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%film%"
		AND
		"Class / Teacher" NOT LIKE "%PM%"
		AND
		"Class / Teacher"  NOT LIKE "%AM%";
--Film & Video Production (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%film%"
		AND
		"Class / Teacher" LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Film & Video Production (AM)"
	WHERE
		"Class / Teacher" LIKE "%film%"
		AND
		"Class / Teacher"  LIKE "%AM%";
--Film & Video Production (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%film%"
		AND
		"Class / Teacher" LIKE "%PM%"

	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Film & Video Production (PM)"
	WHERE
		"Class / Teacher" LIKE "%film%"
		AND
		"Class / Teacher"  LIKE "%PM%";

--Fire Science/First Responder (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%fir%"
		AND
		"Class / Teacher" NOT LIKE "%PM%"
		AND
		"Class / Teacher"  NOT LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "First Science/First Responder (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%fir%"
		AND
		"Class / Teacher" NOT LIKE "%PM%"
		AND
		"Class / Teacher"  NOT LIKE "%AM%";
--Fire Science/First Responder (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%fir%"
		AND
		"Class / Teacher" LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "First Science/First Responder (AM)"
	WHERE
		"Class / Teacher" LIKE "%fir%"
		AND
		"Class / Teacher" LIKE "%AM%";
--Fire Science/First Responder (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%fir%"
		AND
		"Class / Teacher" LIKE "%PM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "First Science/First Responder (PM)"
	WHERE
		"Class / Teacher" LIKE "%fir%"
		AND
		"Class / Teacher" LIKE "%PM%";
--Pharmacy Technician (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%phar%"
		AND
		"Class / Teacher" NOT LIKE "%PM%"
		AND
		"Class / Teacher" NOT LIKE "%AM%"

	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Pharmacy Technician (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%phar%"
		AND
		"Class / Teacher" NOT LIKE "%PM%"
		AND
		"Class / Teacher" NOT LIKE "%AM%";
--Pharmacy Technician (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%phar%"
		AND
		"Class / Teacher" LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Pharmacy Technician (AM)"
	WHERE
		"Class / Teacher" LIKE "%phar%"
		AND
		"Class / Teacher" LIKE "%AM%";
--Pharmacy Technician (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%phar%"
		AND
		"Class / Teacher" LIKE "%PM%"

	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Pharmacy Technician (PM)"
	WHERE
		"Class / Teacher" LIKE "%phar%"
		AND
		"Class / Teacher" LIKE "%PM%";

--Sports Medicine & Kinesiology (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		("Class / Teacher" LIKE "%kin%"
		OR
		"Class / Teacher" LIKE "%spor%")
		AND
		"Class / Teacher" NOT LIKE "%PM%"
		AND
		"Class / Teacher" NOT LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Sports Medicine & Kinesiology (Not Specified)"
	WHERE
		("Class / Teacher" LIKE "%kin%"
		OR
		"Class / Teacher" LIKE "%spor%")
		AND
		"Class / Teacher" NOT LIKE "%PM%"
		AND
		"Class / Teacher" NOT LIKE "%AM%";

--Sports Medicine & Kinesiology (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		("Class / Teacher" LIKE "%kin%"
		OR
		"Class / Teacher" LIKE "%spor%")
		AND
		"Class / Teacher" LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Sports Medicine & Kinesiology (AM)"
	WHERE
		("Class / Teacher" LIKE "%kin%"
		OR
		"Class / Teacher" LIKE "%spor%")
		AND
		"Class / Teacher" LIKE "%AM%";
--Sports Medicine & Kinesiology (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		("Class / Teacher" LIKE "%kin%"
		OR
		"Class / Teacher" LIKE "%spor%")
		AND
		"Class / Teacher" LIKE "%PM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Sports Medicine & Kinesiology (PM)"
	WHERE
		("Class / Teacher" LIKE "%kin%"
		OR
		"Class / Teacher" LIKE "%spor%")
		AND
		"Class / Teacher" LIKE "%PM%";

