SELECT
	College, "Course Title", "Credit Status", "Transfer Status", Term
FROM
	Course_catelog_csv
WHERE
	"Course Title" LIKE "Selling%"
	OR
	"Course Title" LIKE "Marketing%%"
	OR
	"Course Title" LIKE "Merchandising%"
	OR
	"Course Title" LIKE "%Retail%"
	OR
	"Course Title" LIKE "%Customer%"
GROUP BY
	College, "Course Title" 
