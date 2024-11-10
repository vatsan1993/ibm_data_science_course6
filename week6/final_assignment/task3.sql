-- create or replace PROCEDURE UPDATE_LEADERS_SCORE(IN in_School_ID INTEGER, in in_Leader_Score INTEGER)
-- BEGIN

--     UPDATE CHICAGO_PUBLIC_SCHOOLS
--     set `Leaders_Score` = in_Leader_Score
--     WHERE `School_ID` = in_School_Id

-- END ;



-- create or replace PROCEDURE UPDATE_LEADERS_SCORE( IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)
-- BEGIN
--     IF in_Leader_Score>= 80 AND in_Leader_Score <= 99 THEN
--         UPDATE chicago_public_schools
--         set `Leaders_Icon` = 'Very strong'
--         WHERE `School_ID` = in_School_Id;
--     ELSEIF in_Leader_Score >= 60 AND in_Leader_Score <= 79 THEN
--         UPDATE chicago_public_schools
--         set `Leaders_Icon` = 'Strong'
--         WHERE `School_ID` = in_School_Id;
--      ELSEIF in_Leader_Score>= 40 AND in_Leader_Score <= 59 THEN
--         UPDATE chicago_public_schools
--         set `Leaders_Icon` = 'Average'
--         WHERE `School_ID` = in_School_Id;
--      ELSEIF in_Leader_Score >= 20 AND in_Leader_Score<= 39 THEN
--         UPDATE chicago_public_schools
--         set `Leaders_Icon` = 'Weak'
--         WHERE `School_ID` = in_School_Id;
--     ELSEIF in_Leader_Score >= 0 AND in_Leader_Score<= 19 THEN
--         UPDATE chicago_public_schools
--         set `Leaders_Icon` = 'Very weak'
--         WHERE `School_ID` = in_School_Id;
--     END IF;
-- END ;


-- CALL UPDATE_LEADERS_SCORE(610038, 50);
-- SELECT SCHOOL_ID, Leaders_Icon FROM chicago_public_schools where School_ID = 610038;



-- create or replace PROCEDURE UPDATE_LEADERS_SCORE( IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)
-- BEGIN
--     IF in_Leader_Score>= 80 AND in_Leader_Score <= 99 THEN
--         UPDATE chicago_public_schools
--         set `Leaders_Icon` = 'Very strong'
--         WHERE `School_ID` = in_School_Id;
--     ELSEIF in_Leader_Score >= 60 AND in_Leader_Score <= 79 THEN
--         UPDATE chicago_public_schools
--         set `Leaders_Icon` = 'Strong'
--         WHERE `School_ID` = in_School_Id;
--      ELSEIF in_Leader_Score>= 40 AND in_Leader_Score <= 59 THEN
--         UPDATE chicago_public_schools
--         set `Leaders_Icon` = 'Average'
--         WHERE `School_ID` = in_School_Id;
--      ELSEIF in_Leader_Score >= 20 AND in_Leader_Score<= 39 THEN
--         UPDATE chicago_public_schools
--         set `Leaders_Icon` = 'Weak'
--         WHERE `School_ID` = in_School_Id;
--     ELSEIF in_Leader_Score >= 0 AND in_Leader_Score<= 19 THEN
--         UPDATE chicago_public_schools
--         set `Leaders_Icon` = 'Very weak'
--         WHERE `School_ID` = in_School_Id;
--     END IF;
-- END ;


create or replace PROCEDURE UPDATE_LEADERS_SCORE( IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)
BEGIN
    START TRANSACTION;
    IF in_Leader_Score>= 80 AND in_Leader_Score <= 99 THEN
        UPDATE chicago_public_schools
        set `Leaders_Icon` = 'Very strong'
        WHERE `School_ID` = in_School_Id;
    ELSEIF in_Leader_Score >= 60 AND in_Leader_Score <= 79 THEN
        UPDATE chicago_public_schools
        set `Leaders_Icon` = 'Strong'
        WHERE `School_ID` = in_School_Id;
     ELSEIF in_Leader_Score>= 40 AND in_Leader_Score <= 59 THEN
        UPDATE chicago_public_schools
        set `Leaders_Icon` = 'Average'
        WHERE `School_ID` = in_School_Id;
     ELSEIF in_Leader_Score >= 20 AND in_Leader_Score<= 39 THEN
        UPDATE chicago_public_schools
        set `Leaders_Icon` = 'Weak'
        WHERE `School_ID` = in_School_Id;
    ELSEIF in_Leader_Score >= 0 AND in_Leader_Score<= 19 THEN
        UPDATE chicago_public_schools
        set `Leaders_Icon` = 'Very weak'
        WHERE `School_ID` = in_School_Id;
    ELSE
        ROLLBACK;
    END IF;
    COMMIT;
END ;


CALL UPDATE_LEADERS_SCORE(610038, 38);
SELECT SCHOOL_ID, Leaders_Icon FROM chicago_public_schools where School_ID = 610038;

CALL UPDATE_LEADERS_SCORE(610038, 101);
SELECT SCHOOL_ID, Leaders_Icon FROM chicago_public_schools where School_ID = 610038;
