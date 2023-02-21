SELECT 
	*
FROM
	MapinClean;
--Removes whitespace and proper cases entries. Combining function seems to ignore one of the functions
	UPDATE
		MapinClean
		SET
		Email  = TRIM(Email);
	UPDATE --catches cases that trim misses
		MapinClean
		SET
		Email  = REPLACE(Email, ' ', '');
	UPDATE
		MapinClean
		SET
		Email  = PROPER(Email);
/* 
Cleaning by Domain Name, finds an '@' and displays everything after (some entries have multiple)
Many students use their school district emails which will have issues with spellcheck/autofill from smart phones.
Will need to aggregate a list of district domains to ensure accuracy.
 */
	SELECT
		SUBSTRING(Email, instr(Email, '@')) as "Domain", count("Domain")
	FROM
		MapinClean
	GROUP BY
		"Domain"
	ORDER BY 
		"Domain" ,COUNT("Domain") DESC;
	
/*
 This portion is specifically for cleaning entires.
 A select query should be ran first to identify the where condition for the SET statement.
 That why you can identify what entries are be updated.
 */
	
--Cleaning Domain types e.g. .com, .net, .org
	--.org veriations
		SELECT
			SUBSTRING(Email, -4) as "Domain", COUNT("Domain") 
			FROM
				MapinClean
			WHERE
				"Domain" LIKE "%.o%"
			GROUP BY 
				"Domain";
		UPDATE	
			MapinClean
			SET
				Email = REPLACE(Email, 'organic', 'org'),
				Email = REPLACE(Email, 'orf', 'org')
				;
--.com
		SELECT
				SUBSTRING(Email, -4) as "Domain", COUNT("Domain") 
			FROM
				MapinClean
			WHERE
				"Domain" LIKE '%.co%'
				OR
				"Domain" LIKE '%om'
			GROUP BY
				"Domain";
		UPDATE	
			MapinClean
			SET
				Email = REPLACE(Email, 'xom', 'com'),
				Email = REPLACE(Email, 'lcom', 'l.com'),--L is for gmail
				Email = REPLACE(Email, 'lCom', 'l.com'), --L is for gmail
				Email = REPLACE(Email, '.co', '.com'), --will need to convert 'comm' to 'com' since this will include com(m)
				Email = REPLACE(Email, '.con', '.com'),
				Email = REPLACE(Email, '.co,', '.com');
	--.net
		SELECT
				SUBSTRING(Email, -4) as "Domain", COUNT("Domain") 
			FROM
				MapinClean
			WHERE
				"Domain" LIKE '%.n%'
				OR
				"Domain" LIKE '%et'
			GROUP BY
				"Domain";
		UPDATE
			MapinClean
		SET
			Email = REPLACE(Email, '.bet', '.net'),
			Email = REPLACE(Email, 'unet', '.net'),
			Email = REPLACE(Email, 'dnet', '.net'),
			Email = REPLACE(Email, ',net', '.net'),
			Email = REPLACE(Email, '.neg', '.net'),
			Email = REPLACE(Email, '.ney', '.net');
		
	--.edu
		SELECT
				SUBSTRING(Email, -4) as "Domain", COUNT("Domain") 
			FROM
				MapinClean
			WHERE
				"Domain" LIKE '%.e%'
			GROUP BY
				"Domain";
		UPDATE	
			MapinClean
		SET
			Email = REPLACE(Email, '.ed.', '.edu'),
			Email = REPLACE(Email, '.ed', '.edu'),
			Email = REPLACE(Email, '.eduu', '.edu');
--Metroed
	SELECT
		Email
		FROM
			MapinClean
		WHERE
			Email LIKE "%meteors%"; --autocorrect/autofill in appears to be the biggest issue
	UPDATE	
		MapinClean
		SET
			Email = REPLACE(Email, 'meteors', 'metroed');
	SELECT
		SUBSTRING(Email, instr(Email, '@')) as "Domain", COUNT("Domain")
		FROM
			MapinClean
		WHERE
			"Domain" LIKE "%metr%"
		GROUP BY
			"Domain";

--icloud
	SELECT
		SUBSTRING(Email, instr(Email, '@')) as "Domain", COUNT("Domain") 
		FROM
			MapinClean
		WHERE
			"Domain" LIKE '%ic%'
			OR
			"Domain" LIKE '@%ou%'
		GROUP BY
			"Domain";
	UPDATE	
		MapinClean
		SET
			Email = REPLACE(Email, '@ilcoud.com', '@icloud.com'),
			Email = REPLACE(Email, '@cloud.com', '@icloud.com'),
			Email = REPLACE(Email, '@ichoudhry.com', '@icloud.com'),
			Email = REPLACE(Email, '@icould.org', '@icloud.com'),
			Email = REPLACE(Email, '@icloud.com ', '@icloud.com'),
			Email = REPLACE(Email, '@icould.com', '@icloud.com'),
			Email = REPLACE(Email, '@icloud.com ', '@icloud.com');
		
--Gmail
	SELECT
		Email, count(Email)
		FROM
			MapinClean
		WHERE 
			Email LIKE '%@gm%'
		GROUP BY
			Email;
	/*
Testing using a like statement in the where clause to mass update
Query is not updating any rows, will need to manually update
	
	UPDATE 
		MapinClean
		SET
			Email = REPLACE(SUBSTRING(Email, instr(Email, '@')), '@gmail.comm', '@gmail.com')
		WHERE
			"Domain" LIKE '@gm%'
			AND
			("Domain" NOT LIKE "%Or%"
			AND
			"Domain" NOT LIKE "%,%");
			*/
	SELECT
		SUBSTRING(Email, instr(Email, '@')) as "Domain", COUNT("Domain") 
		FROM
			MapinClean
		WHERE
			"Domain" LIKE '%mail%' --contain Ymail, yahoo uses ymail, so it may not be a typo
			OR
			"Domain" LIKE '@g%'
			AND
			("Domain" NOT LIKE "%Or%"
			AND
			"Domain" NOT LIKE "%,%")
		GROUP BY
			"Domain";
	UPDATE
		MapinClean
		SET
		Email = REPLACE(Email, '@fmail.com', '@gmail.com'),
		Email = REPLACE(Email, '@gamil.com', '@gmail.com'),
		Email = REPLACE(Email, '@gmail.comm', '@gmail.com'),
		Email = REPLACE(Email, '@gmail', '@gmail.com');
	
--hotmail
	SELECT
		SUBSTRING(Email, instr(Email, '@')) as "Domain", COUNT("Domain") 
		FROM
			MapinClean
		WHERE
			"Domain" LIKE '@%ot%'
		GROUP BY
			"Domain";
	UPDATE
		MapinClean
		SET
		Email = REPLACE(Email, '@hotmail.edu', '@hotmail.com'),
		Email = REPLACE(Email, '@gotmail.com', '@hotmail.com');
--Yahoo
	SELECT
		SUBSTRING(Email, instr(Email, '@')) as "Domain", COUNT("Domain") 
		FROM
			MapinClean
		WHERE
			"Domain" LIKE '@%ya%'
		GROUP BY
			"Domain";
	UPDATE
		MapinClean
		SET
		Email = REPLACE(Email, '@yahoot.com', '@yahoo.com'),
		Email = REPLACE(Email, '@yaho.com', '@yahoo.com'),
		Email = REPLACE(Email, '@yahoo.com ', '@yahoo.com'),
		Email = REPLACE(Email, '@yahoo.comm', '@yahoo.com')
		
