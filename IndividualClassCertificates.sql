--Certificates earned for taking individual classes
SELECT 
	"Parent Information", "Parent Name" , "Name of Class"
From
	R_certificate_csv rcc
Order BY
	"Name of Class", "Parent Information" DESC
