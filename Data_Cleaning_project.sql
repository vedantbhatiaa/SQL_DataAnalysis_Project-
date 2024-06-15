select *
from layoffs;
-- steps for data cleaning --
-- 1. remove duplicates-- 
-- 2. Standardize the data --
-- 3. Null values or blank --
-- 4. Remove any columns not neccessary -- 


-- creating a similar database to work upon to keep the main databse safe-- 
create table layoffs_staging 
like layoffs ;

select * 
from layoffs_staging;

insert layoffs_staging 
select *
from layoffs; 

-- removing duplicates-- 
select *,
ROW_NUMBER() OVER (
PARTITION BY company, industry, total_laid_off, percentage_laid_off, `date`) AS ROW_NUM
from layoffs_staging;

with duplicate_rows as 
(
select *,
ROW_NUMBER() OVER (
PARTITION BY company,location,  industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) AS ROW_NUM
from layoffs_staging)
delete 
from duplicate_rows
where ROW_NUM > 1;



insert into layoffs_staging2
 select *,
ROW_NUMBER() OVER (
PARTITION BY company,location,  industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) AS ROW_NUM
from layoffs_staging;

select *
from layoffs_staging2
where row_num > 1 ;

delete
from layoffs_staging2
where row_num > 1 ;

select *
from layoffs_staging2;

-- standardizing the data--

select  company, trim(company)
from layoffs_staging2;

update layoffs_staging2
set company= trim(company);

select *
from layoffs_staging2
where industry like 'crypto%';

update layoffs_staging2
set industry= 'Crypto'
where industry like 'Crypto%' ;


select distinct country, trim(Trailing '.' from country)
from layoffs_staging2
order by 1;

update layoffs_staging2
set country = trim(Trailing '.' from country)
where country like 'UNited States%'
;

select `date`,
str_to_date(`date`, '%m/%d/%Y') 
from layoffs_staging2;

update layoffs_staging2
set `date`= str_to_date(`date`, '%m/%d/%Y') ;

alter table layoffs_staging2
modify column `date` DATE; 

-- Null values--

select *
from layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;

select *
from layoffs_staging2
WHERE INDUSTRY IS NULL
OR INDUSTRY = '';


select t1.industry , t2.industry
from layoffs_staging2 t1
join layoffs_staging2 t2
	on t1.company = t2.company
where (t1.industry is null or t1.industry = '')
and t2.industry is not null ;    

update layoffs_staging2
set industry = Null
where industry = '';

update layoffs_staging2 t1
join  layoffs_staging2 t2
	on t1.company = t2.company
set t1.company=t2.company 
where t1.industry is null  
and t2.industry is not null ;

select *
from layoffs_staging2
where company = 'Airbnb' ;

select *
from layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null ;

delete
from layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null ;


alter table layoffs_staging2
drop column row_num;
select *
from layoffs_staging2;

