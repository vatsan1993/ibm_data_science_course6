SELECT E.F_NAME, E.L_NAME, JH.START_DATE
FROM EMPLOYEES as E
    INNER JOIN JOB_HISTORY as JH ON E.EMP_ID = JH.EMPL_ID
WHERE
    E.DEP_ID = '5';

SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
FROM EMPLOYEES AS E
    LEFT OUTER JOIN DEPARTMENTS AS D ON E.DEP_ID = D.DEPT_ID_DEP;

SELECT E.F_NAME, E.L_NAME, D.DEP_NAME
FROM EMPLOYEES AS E
    LEFT OUTER JOIN DEPARTMENTS AS D ON E.DEP_ID = D.DEPT_ID_DEP

UNION

SELECT E.F_NAME, E.L_NAME, D.DEP_NAME
FROM EMPLOYEES AS E
    RIGHT OUTER JOIN DEPARTMENTS AS D ON E.DEP_ID = D.DEPT_ID_DEP
    -- Retrieve the names, job start dates, and job titles of all employees who work for department number 5.

SELECT E.F_NAME, JH.START_DATE, J.JOB_TITLE
FROM
    EMPLOYEES AS E
    INNER JOIN JOB_HISTORY As JH ON JH.JOBS_ID = E.JOB_ID
    INNER JOIN JOBS AS J ON J.JOB_IDENT = E.JOB_ID
where
    E.DEP_ID = 5;

-- Retrieve employee ID, last name, and department ID for all employees but department names for only those born before 1980.
SELECT EMP_ID, L_NAME, F_NAME, E.DEP_ID, D.DEP_NAME
FROM EMPLOYEES E
    LEFT OUTER JOIN DEPARTMENTS D on E.DEP_ID = D.DEPT_ID_DEP
where
    YEAR(B_DATE) < 1980;

-- Retrieve the first name and last name of all employees but department ID and department names only for male employees.

SELECT F_NAME, L_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES E
    LEFT OUTER JOIN DEPARTMENTS D ON E.DEP_ID = D.DEPT_ID_DEP
WHERE
    E.SEX = 'M';
