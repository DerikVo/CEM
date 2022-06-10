--Certificates earned for taking individual classes
SELECT 
	info."Parent Academy ID", info."First Name" || " " || info."Last Name" as Name , cert."Name of Class", info.Email 
From
	R_certificate_csv cert
	JOIN
	R_parentInfo_csv info
	ON
	cert."Parent Information" = info."Parent Academy ID" 
WHERE 
	Date >12/31/2020
	AND
	info."Receptive to Email" = "Yes"
Order BY
	"Name of Class", "Parent Information" DESC
