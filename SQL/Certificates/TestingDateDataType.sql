/* This code is used to identify DBeaver (SQLlite) preferred format to store dates, 
 changing settings in preferences does not change
 the format to a desired format
 
 20220727
 */

ALTER TABLE R_certificate_csv 
ADD DateDash Date(10);
ALTER TABLE R_certificate_csv 
ADD DateDash2 Date(10);
ALTER TABLE R_certificate_csv 
ADD DateSlash Date(10);
ALTER TABLE R_certificate_csv 
ADD DateSlash2 Date(10);

--Testing format of program based on standard Year, Month, Day format
UPDATE
	R_certificate_csv
SET
	"DateDash" = "2020-12-13", --YYYY-MM-DD
	"DateDash2" = "2020-13-12"; --YYYY-DD-MM
  	"DateSlash" = "2020/12/13", --YYYY-MM-DD
	"DateSlash2" = "2020/13/12"; --YYYY-DD-MM
	
SELECT
	Date("DateDash"), Date("DateDash2"), Date("DateSlash"), Date("DateSlash2"), Date("Date")
FROM
	R_certificate_csv rc
WHERE
	Date < "2021-07-01"
--The format dates should be stored in is YYYY-MM-DD, which is the standard format. Documentation (top of this page) is also dated as YYYYMMDD

--Deletes excess date coloumns
ALTER TABLE R_certificate_csv  DROP COLUMN DateDash;
ALTER TABLE R_certificate_csv  DROP COLUMN DateDash2;
ALTER TABLE R_certificate_csv  DROP COLUMN DateSlash;
ALTER TABLE R_certificate_csv  DROP COLUMN DateSlash2;
