-- Identifies Unique schools
SELECT
	DISTINCT ("Home School")
FROM
	Mapin_SQL
ORDER BY
	"Home School";  

-- Identifies variations
SELECT
	DISTINCT("Home School") ,Count("Home School") AS 'Count'
FROM
	Mapin_SQL
WHERE
	"Home School" LIKE "%Abraham%"
GROUP BY
	"Home School";


--Updates record so there are no variations
UPDATE
	Mapin_SQL
SET
	"Home School" = "Abraham Lincoln High School"
WHERE -- match THIS  where statement to the previous WHERE statment
	"Home School" LIKE "%Abraham%";
