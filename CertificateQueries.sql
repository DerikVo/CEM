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
	"Name of Class" IN ('LinkedIn-1', 'LinkedIn-2')
GROUP BY 
	"Parent Information" 
HAVING 
	Count("Name of Class") = 2; --fixed code, was pulling typing courses instead of linkedin.
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

--Career Development program of Study (9 Sessions)
SELECT 
	DISTINCT ("Parent Information"), "Parent Name"
From
	R_certificate_csv rcc 
WHERE
	"Name of Class" IN 
	('Public Speaking Pt. 1', 'Public Speaking Pt. 2', 'Resume Writing', 'SMART Goals Pt. 1', 
	'SMART Goals Pt. 2', 'Time Management Pt. 1', 'Time Management Pt. 2', 'Managing Difficult Conversations Pt. 1',
	'Managing Difficult Conversations Pt. 2')
GROUP BY 
	"Parent Information" 
HAVING 
	Count("Name of Class") = 9;

--Career Exploration program of Study (3 Sessions)
SELECT 
	DISTINCT ("Parent Information"), "Parent Name"
From
	R_certificate_csv rcc 
WHERE
	"Name of Class" IN 
	('Career Exploration Program of Study Pt. 1', 'Career Exploration Program of Study Pt. 2',
	'Career Exploration Program of Study Pt. 3')
GROUP BY 
	"Parent Information" 
HAVING 
	Count("Name of Class") = 3;
	
