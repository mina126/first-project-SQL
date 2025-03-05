SELECT *
FROM world_layoffs.layoffs_staging_2;

-- we can use str to date to update this field
UPDATE layoffs_staging_2
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');

-- now we can convert the data type properly
ALTER TABLE layoffs_staging_2
MODIFY COLUMN `date` DATE;


SELECT *
FROM world_layoffs.layoffs_staging_2;