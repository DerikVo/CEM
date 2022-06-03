/*
Created a more dynmaic approch to pulling reports
Next steps is to use user input and case conditions to pull reports

20220603
*/

SELECT 
	info."Parent Academy ID", info."First Name" || " " || info."Last Name" as Name , 
	'Zoom certificate', --title of certificate, will try to make this dynamic with user input
	info.Email 
From
	R_certificate_csv cert
	JOIN
	R_parentInfo_csv info
	ON
	cert."Parent Information" = info."Parent Academy ID"
	CROSS JOIN 
	TestList_csv tl --small list of a few classes to check to see if method works, will add other classes to the CSV
WHERE
	cert."Name of Class" 
	IN(
		SELECT
			tl."Zoom"
		FROM
			TestList_csv tl)  --checks what clases are required to earn the zoom certificate
GROUP BY
	info."Parent Academy ID" 
HAVING
	COUNT(DISTINCT(tl.Zoom)) = COUNT(DISTINCT(cert."Name of Class")) --only counts unique classes in list and ignores duplicate classes parents have taken
	
	/* Adding multiple coloumns to the TestList csv causes this function to not pull any data.
	I assume its because its pulling all the elements in the table, and not just the coloumn.
	We would need to create seperate tables for each certificate and use case statments to pull
	the necessary data if we want a dynamic sql query. */
Order BY
	"Parent Information"
