CREATE OR REPLACE VIEW school_view (
    School_Name,
    Safety_Rating,
    Family_Rating,
    Environment_Rating,
    Instruction_Rating,
    Leaders_Rating,
    Teachers_Rating
) AS
SELECT
    NAME_OF_SCHOOL,
    Safety_Icon,
    Family_Involvement_Icon,
    Environment_Icon,
    Instruction_Icon,
    Leaders_Icon,
    Teachers_Icon
FROM chicago_public_schools;

SELECT * from school_view;

select School_Name, Leaders_Rating FROM school_view;
