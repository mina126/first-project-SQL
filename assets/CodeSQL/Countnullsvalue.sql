
SELECT 
    COUNT(*) - COUNT(total_laid_off) AS total_laid_off_nulls,
    COUNT(*) - COUNT(percentage_laid_off) AS percentage_laid_off_nulls,
    COUNT(*) - COUNT(funds_raised_millions) AS funds_raised_millions_nulls
FROM layoffs;
