CREATE TABLE SystemUser (
  Id        serial,
  Login     varchar(64) NOT NULL,
  Password  varchar(64) NOT NULL,
  FullName  varchar(255)
);
CREATE UNIQUE INDEX akSystemUserLogin ON SystemUser (Login);
ALTER TABLE GroupUser ADD CONSTRAINT pkGroupUser PRIMARY KEY (GroupId, UserId);
ALTER TABLE GroupUser ADD CONSTRAINT fkGroupUserGroupId FOREIGN KEY (GroupId) REFERENCES SystemGroup (Id) ON DELETE CASCADE;

SELECT *
FROM Customers
ORDER BY Country DESC;

DELETE FROM table_name WHERE condition;

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;