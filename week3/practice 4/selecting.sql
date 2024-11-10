
--     Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.

-- a. Using sub-queries
-- Solution

select * from EMPLOYEES where JOB_ID in (select JOB_IDENT from JOBS where JOB_TITLE = 'Jr. Designer')


-- b. Using Implicit Joins
-- Solution

select * from EMPLOYEES E, JOBS J
where E.JOB_ID = J.JOB_IDENT and J.JOB_TITLE= 'Jr. Designer';

--     Retrieve JOB information and a list of employees whose birth year is after 1976.

-- a. Using sub-queries
-- Solution
select * from JOBS where JOB_IDENT in (select JOB_ID from EMPLOYEES where YEAR(B_DATE) >1976);
-- b. Using implicit join
-- Solution
select * from JOBS J, EMPLOYEES E where J.JOB_IDENT = E.JOB_ID and YEAR(E.B_DATE) >1976;
