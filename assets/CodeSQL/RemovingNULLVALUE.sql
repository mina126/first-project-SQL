SELECT *
FROM world_layoffs.layoffs_staging_2
WHERE total_laid_off IS NULL;


SELECT *
FROM world_layoffs.layoffs_staging_2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;

-- Delete Useless data we can't really use
DELETE FROM world_layoffs.layoffs_staging_2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;

SELECT * 
FROM world_layoffs.layoffs_staging_2;

