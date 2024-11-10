-- Write and execute a SQL query to list the school names, community names and average attendance for communities with a hardship index of 98.

SELECT sc.NAME_OF_SCHOOL, cd.COMMUNITY_AREA_NUMBER, sc.AVERAGE_STUDENT_ATTENDANCE
FROM
    chicago_public_schools sc
    JOIN chicago_socioeconomic_data cd on sc.COMMUNITY_AREA_NUMBER = cd.COMMUNITY_AREA_NUMBER
WHERE
    cd.HARDSHIP_INDEX = 98;

-- Write and execute a SQL query to list all crimes that took place at a school. Include case number, crime type and community name.
SELECT cc.`CASE_NUMBER`, cc.`PRIMARY_TYPE`, sc.`COMMUNITY_AREA_NAME`
FROM
    chicago_public_schools sc
    JOIN chicago_crime cc on sc.COMMUNITY_AREA_NUMBER = cc.COMMUNITY_AREA_NUMBER
