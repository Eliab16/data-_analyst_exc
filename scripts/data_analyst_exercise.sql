
-- How many rows are in the data_analyst_jobs table?
select count(*)
from data_analyst_jobs;

-- Write a query to look at just the first 10 rows.
-- What company is associated with the job posting on the 10th row?
SELECT *
FROM data_analyst_jobs
LIMIT 10;

-- How many postings are in Tennessee?
select count(*) from data_analyst_jobs
where location LIKE '%TN%';

-- How many are there in either Tennessee or Kentucky?

select count(*) from data_analyst_jobs
where location LIKE '%TN%' OR location LIKE '%KY%';

-- How many postings in Tennessee have a star rating above 4?

select count(*) from data_analyst_jobs
where location LIKE '%TN%' AND start_rating > 4;
-- How many postings in the dataset have a review count between 500 and 1000?

select count(*) from data_analyst_jobs
where review_count BETWEEN 500 AND 1000;

-- Show the average star rating for companies in each state. 
-- The output should show the state as `state` and the average rating for the state as `avg_rating`. 
-- Which state shows the highest average rating?

SELECT location as state,ROUND(avg(start_rating),2) as avg_star_rating
From data_analyst_jobs
WHERE start_rating IS NOT NULL							   
group by state
order by avg_star_rating desc; 
-- Select unique job titles from the data_analyst_jobs table. How many are there?
SElECT Distinct title
FROM data_analyst_jobs;

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs;
-- How many unique job titles are there for California companies?
SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE location ='CA';

-- Find the name of each company and its average star rating
-- for all companies that have more than 5000 reviews across all locations. 
-- How many companies are there with more that 5000 reviews across all locations?


select company,ROUND(avg(review_count),2)
FROM data_analyst_jobs
WHERE company IS NOT NULL AND review_count > 5000
group by company;














