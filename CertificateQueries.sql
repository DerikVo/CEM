/* Zoom certificate query */

SELECT 
	DISTINCT ("Parent Information"), "Parent Name"
From
	R_certificate_csv rcc 
WHERE 
 	"Name of Class" IN ("Zoom-1", "Zoom-2")
ORDER BY
	"Parent Information" DESC
/* Google Drive certificate query */

SELECT 
	DISTINCT ("Parent Information"), "Parent Name"
From
	R_certificate_csv rcc 
WHERE 
 	"Name of Class" IN ('Google Docs Practice Session' , 'Google Drive Practice Session', 'Google Drive-1', 'Google Drive-2', 'Google Drive-1, Google Drive-2', 'Google Drive-3 Pt. 1', 
 	'Google Drive-3 Pt. 2', 'Google Drive-4') 
ORDER BY
	"Parent Information" DESC
	
