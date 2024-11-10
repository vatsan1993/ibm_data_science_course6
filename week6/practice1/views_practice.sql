CREATE VIEW EMPSALARY AS
    SELECT
        EMP_ID,
        F_NAME,
        L_NAME,
        B_DATE,
        SEX,
        SALARY
    FROM
        EMPLOYEES;

SELECT
    *
FROM
    EMPSALARY;

CREATE OR REPLACE VIEW EMPSALARY AS
    SELECT
        EMP_ID,
        F_NAME,
        L_NAME,
        B_DATE,
        SEX,
        JOB_TITLE,
        MIN_SALARY,
        MAX_SALARY
    FROM
        EMPLOYEES,
        JOBS
    WHERE
        EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;

SELECT
    *
FROM
    EMPSALARY;

DROP VIEW EMPSALARY;

SELECT
    *
FROM
    EMPSALARY;

-- Create a view “EMP_DEPT” which has the following information.
-- EMP_ID, FNAME, LNAME and DEP_ID from EMPLOYEES table

CREATE OR REPLACE VIEW EMP_DEPT AS
    SELECT
        EMP_ID,
        F_NAME,
        L_NAME
        AND DEP_ID
    FROM
        EMPLOYEES;

SELECT
    *
FROM
    EMP_DEPT;

--     Modify “EMP_DEPT” such that it displays Department names instead of Department IDs. For this, we need to combine information from EMPLOYEES and DEPARTMENTS as follows.

-- EMP_ID, FNAME, LNAME from EMPLOYEES table and
-- DEP_NAME from DEPARTMENTS table, combined over the columns DEP_ID and DEPT_ID_DEP.

CREATE OR REPLACE VIEW EMP_DEPT AS
    SELECT
        EMP_ID,
        F_NAME,
        L_NAME,
        DEP_NAME
    FROM
        EMPLOYEES,
        DEPARTMENTS
    WHERE
        DEP_ID = DEPT_ID_DEP;

SELECT
    *
FROM
    EMP_DEPT;

DROP VIEW EMP_DEPT;
