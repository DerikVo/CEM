--Certificates earned for taking individual classes
SELECT 
	Distinct(TRIM(cert."Name of Class")) AS "Name of Class", --Identifying unique classes, but because some repeats have differnet instructors duplicates will remain remain.
	info."Parent Academy ID",
	info."first Name" AS "First Name", --added a seperate column for first name, so mail merge will refer to them by their first name instead of their full name.
	info."First Name" || " " || info."Last Name" as "Full Name", --Full name is used for labeling the certificates
	info.Email, cert."Date",
	cert."Instructor" -- Provides information on who will present the certificates to students
From
	R_certificate_csv cert
	JOIN
	R_parentInfo_csv info
	ON
	cert."Parent Information" = info."Parent Academy ID" 
WHERE 
	Date > "2020-12-31" --Changed date format, system only recognizes dates stored in YYYY-MM-DD
	AND
	info."Receptive to Email" = "Yes"
Order BY
	"Name of Class", "Parent Information" DESC
