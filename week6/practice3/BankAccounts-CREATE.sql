DROP TABLE IF EXISTS BankAccounts;

CREATE TABLE BankAccounts (
    AccountNumber VARCHAR(5) NOT NULL PRIMARY KEY,
    AccountName VARCHAR(25) NOT NULL,
    Balance DECIMAL(8, 2) NOT NULL CHECK (Balance >= 0)
);

INSERT INTO
    BankAccounts
VALUES ('B001', 'Rose', 300),
    ('B002', 'James', 1345),
    ('B003', 'Shoe Shop', 124200),
    ('B004', 'Corner Shop', 76000);

-- Retrieve all records from the table

SELECT * FROM BankAccounts;
