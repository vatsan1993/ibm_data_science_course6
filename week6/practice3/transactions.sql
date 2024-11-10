DELIMITER / /

CREATE or REPLACE PROCEDURE TRANSACTION_ROSE()
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;
    START TRANSACTION;
    UPDATE BankAccounts
    SET Balance = Balance - 200
    WHERE AccountName = 'Rose';

    Update BankAccounts
    set Balance = Balance + 200
    where AccountName = 'Shoe Shop';

    UPDATE ShoeShop
    SET Stock = Stock - 11
    where Product = 'Boots';

    UPDATE BankAccounts
    SET Balance = Balance - 300
    WHERE AccountName = 'Rose';

    COMMIT;
ENd //

DELIMITER;

call TRANSACTION_ROSE;

SELECT * FROM BankAccounts;

SELECT * FROM ShoeShop;

-- Create a stored procedure TRANSACTION_JAMES to execute a transaction based on the following scenario: First buy James 4 pairs of Trainers from ShoeShop. Update his balance as well as the balance of ShoeShop. Also, update the stock of Trainers at ShoeShop. Then attempt to buy James a pair of Brogues from ShoeShop. If any of the UPDATE statements fail, the whole transaction fails. You will roll back the transaction. Commit the transaction only if the whole transaction is successful.

DELIMITER / /

CREATE OR REPLACE PROCEDURE TRANSACTION_JAMES()
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    UPDATE BankAccounts
    SET Balance = Balance - 300
    WHERE AccountName = 'James';

    UPDATE BankAccounts
    SET Balance = Balance + 300
    WHERE AccountName = 'Shoe Shop';

    UPDATE BankAccounts
    SET Balance = Balance - 300
    WHERE AccountName = 'James';

    UPDATE BankAccounts
    SET Balance = Balance + 300
    WHERE AccountName = 'Shoe Shop';

    UPDATE BankAccounts
    SET Balance = Balance - 300
    WHERE AccountName = 'James';

    UPDATE BankAccounts
    SET Balance = Balance + 300
    WHERE AccountName = 'Shoe Shop';

    UPDATE BankAccounts
    SET Balance = Balance - 300
    WHERE AccountName = 'James';

    UPDATE BankAccounts
    SET Balance = Balance + 300
    WHERE AccountName = 'Shoe Shop';

    UPDATE ShoeShop
    SET Stock = Stock - 4
    where Product = 'Trainers';

    UPDATE BankAccounts
    SET Balance = Balance - 150
    WHERE AccountName = 'James';

    UPDATE BankAccounts
    SET Balance = Balance + 150
    WHERE AccountName = 'Shoe Shop';


    UPDATE ShoeShop
    SET Stock = Stock - 1
    where Product = 'Brogues';

    COMMIT;
END //

DELIMITER;

call TRANSACTION_JAMES;

SELECT * FROM BankAccounts;

SELECT * FROM ShoeShop;
