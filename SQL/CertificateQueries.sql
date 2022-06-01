
--Pulls Zoom Certificate
SELECT 
	DISTINCT(rc."Parent Information") as ID, rp."First Name" || " " || rp."Last Name" as Name, rp."Email", "Zoom Certificate"
From
	R_certificate_csv rc
	JOIN
	R_parentInfo_csv rp on rc."Parent Information" = rp."Parent Academy ID" 
WHERE 
 	"Name of Class" IN ("Zoom-1", "Zoom-2")
	AND
 	rp."Receptive to Email" ="Yes"
	AND
 	Date > 12/31/2020
GROUP BY 
	"Parent Information" 
HAVING 
	Count(DISTINCT("Name of Class")) = 2;
--Pulls Google Drive Certificate
SELECT 
	DISTINCT(rc."Parent Information") as ID, rp."First Name" || " " || rp."Last Name" as Name, rp."Email", "Google Drive Certificate"
From
	R_certificate_csv rc
	JOIN
	R_parentInfo_csv rp on rc."Parent Information" = rp."Parent Academy ID" 
WHERE 
 	"Name of Class" IN ('Google Docs Practice Session' , 'Google Drive Practice Session', 'Google Drive-1', 'Google Drive-2', 'Google Drive-3 Pt. 1' , 'Google Drive-3 Pt. 1', 
 	'Google Drive-3 Pt. 2', 'Google Drive-4')
	AND
 	rp."Receptive to Email" ="Yes"
	AND
 	Date > 12/31/2020
GROUP BY 
	"Parent Information" 
HAVING 
	Count(DISTINCT("Name of Class")) = 7;
--Pulls Typing Certificate
SELECT 
	DISTINCT(rc."Parent Information") as ID, rp."First Name" || " " || rp."Last Name" as Name, rp."Email", "Typing Certificate"
From
	R_certificate_csv rc
	JOIN
	R_parentInfo_csv rp on rc."Parent Information" = rp."Parent Academy ID" 
WHERE 
 	"Name of Class" IN ('Typing-1')
	AND
 	rp."Receptive to Email" ="Yes"
	AND
 	Date > 12/31/2020
GROUP BY 
	"Parent Information" 
HAVING 
	Count(DISTINCT("Name of Class")) = 1;
--Pulls LinkedIn Certificate
SELECT 
	DISTINCT(rc."Parent Information") as ID, rp."First Name" || " " || rp."Last Name" as Name, rp."Email", "LinkedIn Certificate"
From
	R_certificate_csv rc
	JOIN
	R_parentInfo_csv rp on rc."Parent Information" = rp."Parent Academy ID" 
WHERE
	"Name of Class" IN ('LinkedIn-1', 'LinkedIn-2')
	AND
 	rp."Receptive to Email" ="Yes"
	AND
 	Date > 12/31/2020
GROUP BY 
	"Parent Information" 
HAVING 
	Count("Name of Class") = 2;
--Pulls Math Certificate
SELECT 
	DISTINCT(rc."Parent Information") as ID, rp."First Name" || " " || rp."Last Name" as Name, rp."Email", "Math Certificate"
From
	R_certificate_csv rc
	JOIN
	R_parentInfo_csv rp on rc."Parent Information" = rp."Parent Academy ID" 
WHERE
	"Name of Class" IN ('Math-1 pt. 1', 'Math-1 pt. 2', 'Math-2 pt. 1', 'Math-1 pt. 2')
	AND
 	rp."Receptive to Email" ="Yes"
	AND
 	Date > 12/31/2020
GROUP BY 
	"Parent Information" 
HAVING 
	Count(DISTINCT("Name of Class")) = 4;
--Pulls Career Development program of study
SELECT 
	DISTINCT(rc."Parent Information") as ID, rp."First Name" || " " || rp."Last Name" as Name, rp."Email", "Career Development Certificate"
From
	R_certificate_csv rc
	JOIN
	R_parentInfo_csv rp on rc."Parent Information" = rp."Parent Academy ID" 
WHERE
	"Name of Class" IN 
	('Public Speaking Pt. 1', 'Public Speaking Pt. 2', 'Resume Writing', 'SMART Goals Pt. 1', 
	'SMART Goals Pt. 2', 'Time Management Pt. 1', 'Time Management Pt. 2', 'Managing Difficult Conversations Pt. 1',
	'Managing Difficult Conversations Pt. 2')
	AND
 	rp."Receptive to Email" ="Yes"
	AND
 	Date > 12/31/2020
GROUP BY 
	"Parent Information" 
HAVING 
	Count(DISTINCT("Name of Class")) = 9;
--Pulls Career Exploration program of study
SELECT 
	DISTINCT(rc."Parent Information") as ID, rp."First Name" || " " || rp."Last Name" as Name, rp."Email", "Career Exploration Certificate"
From
	R_certificate_csv rc
	JOIN
	R_parentInfo_csv rp on rc."Parent Information" = rp."Parent Academy ID" 
WHERE
	"Name of Class" IN 
	('Career Exploration Program of Study Pt. 1', 'Career Exploration Program of Study Pt. 2', 'Career Exploration Program of Study Pt. 3')
	AND
 	rp."Receptive to Email" ="Yes"
	AND
 	Date > 12/31/2020
GROUP BY 
	"Parent Information" 
HAVING 
	Count(DISTINCT("Name of Class")) = 3;
