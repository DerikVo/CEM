SELECT
	*
FROM
	Mapin
ORDER BY Date
	desc;

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
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
FROM
	Mapin
GROUP BY
	"Class / Teacher"
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
		AND
		"Class / Teacher"  LIKE "%(am)%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Auto Body Refinishing (AM)"
	WHERE
		"Class / Teacher" LIKE "%auto%"
		AND
		"Class / Teacher"  LIKE "%refin%"
		AND
		"Class / Teacher"  LIKE "%(am)%";

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
		("Class / Teacher" LIKE "%service%"
		OR
		"Class / Teacher"  LIKE "%tive%")
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
		("Class / Teacher" LIKE "%service%"
		OR
		"Class / Teacher"  LIKE "%tive%")
		AND
		"Class / Teacher" NOT LIKE "%pm%"
		AND
		"Class / Teacher" NOT LIKE "%AM%";

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

--Dental Assisting (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT ("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE ("%dent%")
		AND
		"Class / Teacher" NOT LIKE ("%AM%")
		AND
		"Class / Teacher" NOT LIKE ("%PM%")
	GROUP BY
		"Class / Teacher";

UPDATE
	Mapin
	SET
		"Class / Teacher" = "Dental Assisting (Not Specified)"
	WHERE
		"Class / Teacher" LIKE ("%dent%")
		AND
		"Class / Teacher" NOT LIKE ("%AM%")
		AND
		"Class / Teacher" NOT LIKE ("%PM%");
--Dental Assisting (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT ("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE ("%dent%")
		AND
		"Class / Teacher" LIKE ("%AM%")
	GROUP BY
		"Class / Teacher";

UPDATE
	Mapin
	SET
		"Class / Teacher" = "Dental Assisting (Not Specified)"
	WHERE
		"Class / Teacher" LIKE ("%dent%")
		AND
		"Class / Teacher" LIKE ("%AM%");
--Dental Assisting (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT ("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE ("%dent%")
		AND
		"Class / Teacher" LIKE ("%PM%")
	GROUP BY
		"Class / Teacher";

UPDATE
	Mapin
	SET
		"Class / Teacher" = "Dental Assisting (PM)"
	WHERE
		"Class / Teacher" LIKE ("%dent%")
		AND
		"Class / Teacher" LIKE ("%PM%");
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
--Law Enforcement (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%law%"
		AND
		"Class / Teacher" NOT LIKE "%AM%"
		AND
		"Class / Teacher" NOT LIKE "%PM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Law Enforcement (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%law%"
		AND
		"Class / Teacher" NOT LIKE "%AM%"
		AND
		"Class / Teacher" NOT LIKE "%PM%";

--Law Enforcement (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%law%"
		AND
		"Class / Teacher" LIKE "%PM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Law Enforcement (PM)"
	WHERE
		"Class / Teacher" LIKE "%law%"
		AND
		"Class / Teacher" LIKE "%PM%";

--Law Enforcement (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%law%"
		AND
		"Class / Teacher" LIKE "%AM%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Law Enforcement (AM)"
	WHERE
		"Class / Teacher" LIKE "%law%"
		AND
		"Class / Teacher" LIKE "%AM%";
--Mechatronics Engineering (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher") 
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%mech%"
		AND
		"Class / Teacher" NOT LIKE "%truc%"
		AND
		"Class / Teacher" NOT LIKE ("%am%")
		AND
		"Class / Teacher" NOT LIKE ("%pm%")
	GROUP BY
		"Class / Teacher";
UPDATE 
	Mapin
	SET
		"Class / Teacher" = "Mechatronics Engineering (Not Specified)"
	WHERE
		"Class / Teacher" LIKE "%mech%"
		AND
		"Class / Teacher" NOT LIKE "%truc%"
		AND
		"Class / Teacher" NOT LIKE ("%am%")
		AND
		"Class / Teacher" NOT LIKE ("%pm%");

--Mechatronics Engineering (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher") 
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%mech%"
		AND
		"Class / Teacher" NOT LIKE "%truc%"
		AND
		"Class / Teacher" LIKE ("%am%")
	GROUP BY
		"Class / Teacher";
UPDATE 
	Mapin
	SET
		"Class / Teacher" = "Mechatronics Engineering (AM)"
	WHERE
		"Class / Teacher" LIKE "%mech%"
		AND
		"Class / Teacher" NOT LIKE "%truc%"
		AND
		"Class / Teacher" LIKE ("%am%");
--Mechatronics Engineering (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher") 
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE "%mech%"
		AND
		"Class / Teacher" NOT LIKE "%truc%"
		AND
		"Class / Teacher" LIKE ("%pm%")
	GROUP BY
		"Class / Teacher";
UPDATE 
	Mapin
	SET
		"Class / Teacher" = "Mechatronics Engineering (PM)"
	WHERE
		"Class / Teacher" LIKE "%mech%"
		AND
		"Class / Teacher" NOT LIKE "%truc%"
		AND
		"Class / Teacher" LIKE ("%pm%");
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

--Medical Science/Health Careers (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		("Class / Teacher"  LIKE "%me%"
		OR
		"Class / Teacher" LIKE "%he%")
		AND
		("Class / Teacher" LIKE "%car%"
		OR
		"Class / Teacher" LIKE "%sci%")
		AND
		"Class / Teacher" NOT LIKE "%AM%"
		AND
		"Class / Teacher"  NOT LIKE "%pm%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Medical Science/Health Careers (Not Specified)"
	WHERE
		("Class / Teacher"  LIKE "%me%"
		OR
		"Class / Teacher" LIKE "%he%")
		AND
		("Class / Teacher" LIKE "%car%"
		OR
		"Class / Teacher" LIKE "%sci%")
		AND
		"Class / Teacher" NOT LIKE "%AM%"
		AND
		"Class / Teacher"  NOT LIKE "%pm%";

--Medical Science/Health Careers (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		("Class / Teacher" LIKE "%me%"
		OR
		"Class / Teacher" LIKE "%he%")
		AND
		("Class / Teacher" LIKE "%car%"
		OR
		"Class / Teacher" LIKE "%sci%")
		AND
		"Class / Teacher" LIKE "%pm%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Medical Science/Health Careers (PM)"
	WHERE
		("Class / Teacher" LIKE "%me%"
		OR
		"Class / Teacher" LIKE "%he%")
		AND
		("Class / Teacher" LIKE "%car%"
		OR
		"Class / Teacher" LIKE "%sci%")
		AND
		"Class / Teacher" LIKE "%pm%";

--Medical Science/Health Careers (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT("Class / Teacher")
	FROM
		Mapin
	WHERE
		("Class / Teacher"  LIKE "%me%"
		OR
		"Class / Teacher" LIKE "%he%")
		AND
		("Class / Teacher" LIKE "%car%"
		OR
		"Class / Teacher" LIKE "%sci%")
		AND
		"Class / Teacher" LIKE "%am%"
	GROUP BY
		"Class / Teacher";
	
UPDATE
	Mapin
	SET
		"Class / Teacher" = "Medical Science/Health Careers (AM)"
	WHERE
		("Class / Teacher"  LIKE "%me%"
		OR
		"Class / Teacher" LIKE "%he%")
		AND
		("Class / Teacher" LIKE "%car%"
		OR
		"Class / Teacher" LIKE "%sci%")
		AND
		"Class / Teacher" LIKE "%am%";
--Veterinary Science (Not Specified)
SELECT
	DISTINCT("Class / Teacher"), COUNT ("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE ("%vet%")
		AND
		"Class / Teacher" NOT LIKE ("%AM%")
		AND 
		"Class / Teacher" NOT LIKE ("%PM%")
	GROUP BY
		"Class / Teacher";

UPDATE
	Mapin
	SET
		"Class / Teacher" = "Veterinary Science (Not Specified)"
	WHERE
		"Class / Teacher" LIKE ("%vet%")
		AND
		"Class / Teacher" NOT LIKE ("%AM%")
		AND 
		"Class / Teacher" NOT LIKE ("%PM%")

--Veterinary Science (AM)
SELECT
	DISTINCT("Class / Teacher"), COUNT ("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE ("%vet%")
		AND
		"Class / Teacher" LIKE ("%AM%")
	GROUP BY
		"Class / Teacher";

UPDATE
	Mapin
	SET
		"Class / Teacher" = "Veterinary Science (AM)"
	WHERE
		"Class / Teacher" LIKE ("%vet%")
		AND
		"Class / Teacher" LIKE ("%AM%");

--Veterinary Science (PM)
SELECT
	DISTINCT("Class / Teacher"), COUNT ("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE ("%vet%")
		AND
		"Class / Teacher" LIKE ("%PM%")
	GROUP BY
		"Class / Teacher";

UPDATE
	Mapin
	SET
		"Class / Teacher" = "Veterinary Science (PM)"
	WHERE
		"Class / Teacher" LIKE ("%vet%")
		AND
		"Class / Teacher" LIKE ("%PM%");

--N/A
SELECT
	DISTINCT("Class / Teacher"), COUNT ("Class / Teacher")
	FROM
		Mapin
	WHERE
		"Class / Teacher" LIKE ("%n/%")
	GROUP BY
		"Class / Teacher";

UPDATE
	Mapin
	SET
		"Class / Teacher" = "Not applicable"
	WHERE
		"Class / Teacher" LIKE ("%n/%");
