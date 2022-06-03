SELECT 
	info."Parent Academy ID", info."First Name" || " " || info."Last Name" as Name , 'Zoom certificate', info.Email 
From
	R_certificate_csv cert
	JOIN
	R_parentInfo_csv info
	ON
	cert."Parent Information" = info."Parent Academy ID"
	CROSS JOIN 
	TestList_csv tl
WHERE
	cert."Name of Class" 
	IN (
		SELECT
			tl."Zoom"
		FROM
			TestList_csv tl)
GROUP BY
	info."Parent Academy ID" 
HAVING
	COUNT(DISTINCT(tl.Zoom)) = COUNT(DISTINCT(cert."Name of Class"));
Order BY
	"Name of Class", "Parent Information" DESC
