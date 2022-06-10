/*
Created a more dynmaic approch to pulling reports
Next steps is to use user input and case conditions to pull reports
20220603
*/

SELECT 
	info."Parent Academy ID", info."First Name" || " " || info."Last Name" as Name, 
	cert."Name of Class" , --title of certificate, will try to make this dynamic with user input
	info.Email 
From
	R_certificate_csv cert
	JOIN
	R_parentInfo_csv info
	ON
	cert."Parent Information" = info."Parent Academy ID"
	CROSS JOIN 
	zoomcsv_csv zc --small list of a few classes to check to see if method works, will add other classes to the CSV
WHERE
	cert."Name of Class" 
	IN(
		SELECT
			zc.Zoom
		FROM
			zoomcsv_csv zc --Changed to single table for each certificate, having multiple certificates and classes was casuing issues with pulling the wrong class.
			)
GROUP BY
	info."Parent Academy ID"
HAVING
	COUNT(DISTINCT(zc.Zoom)) = COUNT(DISTINCT(cert."Name of Class")) 
Order BY
	info."Parent Academy ID"
