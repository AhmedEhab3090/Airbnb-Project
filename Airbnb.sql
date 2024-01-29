----------------------------------------------------------------------------------------------------
-- Name Column

SELECT SUBSTRING(name,1,CHARINDEX('Â',name) -1)
FROM PortfolioProject..NewYorkListing

Update NewYorkListing
SET name = SUBSTRING(name,1,CHARINDEX('Â',name) -1)

----------------------------------------------------------------------------------------------------
-- License Column

SELECT REPLACE(license,'OSE-STRREG-','Licened')
FROM PortfolioProject..NewYorkListing

UPDATE NewYorkListing
SET license = REPLACE(license,'OSE-STRREG-','Licened')

SELECT license, SUBSTRING(license,1,7)
FROM PortfolioProject..NewYorkListing
Where license LIKE 'L%'

UPDATE NewYorkListing
SET license = SUBSTRING(license,1,7)
FROM PortfolioProject..NewYorkListing
Where license LIKE 'L%'

----------------------------------------------------------------------------------------------------
