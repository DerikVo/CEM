--Zoom certificate query

SELECT 
	DISTINCT ("Parent Information"), "Parent Name"
From
	R_certificate_csv rcc 
WHERE 
 	"Name of Class" IN ("Zoom-1", "Zoom-2")
GROUP BY 
	"Parent Information" 
HAVING 
	Count("Name of Class") = 2;
/* Google Drive certificate query */

SELECT 
	DISTINCT ("Parent Information"), "Parent Name"
From
	R_certificate_csv rcc 
WHERE 
 	"Name of Class" IN ('Google Docs Practice Session' , 'Google Drive Practice Session', 'Google Drive-1', 'Google Drive-2', 'Google Drive-3 Pt. 1' , 'Google Drive-3 Pt. 1', 
 	'Google Drive-3 Pt. 2', 'Google Drive-4')
GROUP BY 
	"Parent Information" 
HAVING 
	Count("Name of Class") = 7;
--Typing Certificate

SELECT 
	DISTINCT ("Parent Information"), "Parent Name"
From
	R_certificate_csv rcc 
WHERE 
 	"Name of Class" IN ('Typing-1') 
GROUP BY 
	"Parent Information" 
HAVING 
	Count("Name of Class") = 1;

--linkedIN certificate

SELECT 
	DISTINCT ("Parent Information"), "Parent Name"
From
	R_certificate_csv rcc 
WHERE
	"Name of Class" IN ('Typing-1')
GROUP BY 
	"Parent Information" 
HAVING 
	Count("Name of Class") = 1;
--Typing Certificates
SELECT 
	"Parent Information", "Parent Name", "Date"
From
	R_certificate_csv rcc 
WHERE
	"Name of Class" IN ('Typing-1')
GROUP BY 
	"Parent Information" 
HAVING 
	Count("Name of Class") = 1;
--Math Certificates
SELECT 
	"Parent Information", "Parent Name", "Date"
From
	R_certificate_csv rcc 
WHERE
	"Name of Class" IN ('Math-1 pt. 1', 'Math-1 pt. 2', 'Math-2 pt. 1', 'Math-1 pt. 2')
GROUP BY 
	"Parent Information" 
HAVING 
	Count("Name of Class") = 4; --Math two is new there should be no parents meeting this criteria
	
