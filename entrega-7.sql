--questão 1
--CREATE USER User_A IDENTIFIED BY 'PT23820x';  -- feito na aula, no arquivo apenas as alterações
CREATE USER User_B WITH PASSWORD = 'senhab1X1';
CREATE USER User_C WITH PASSWORD = 'senhab2X2';
CREATE USER User_D WITH PASSWORD = 'senhab3X3';
CREATE USER User_E WITH PASSWORD = 'senhab4X4';


--questão 2

GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.address TO User_A WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.advisor TO User_A WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.course TO User_A WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.department TO User_A WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.instructor TO User_A WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.person TO User_A WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.prereq TO User_A WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.section TO User_A WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.section_aula_05 TO User_A WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.student TO User_A WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.takes TO User_A WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.teaches TO User_A WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.time_slot TO User_A WITH GRANT OPTION;


--questao 3
SELECT 
    dp.name AS Usuario,
    dp2.name AS Objeto,
    perm.permission_name,
    perm.state_desc
FROM sys.database_permissions perm
JOIN sys.database_principals dp 
    ON perm.grantee_principal_id = dp.principal_id
JOIN sys.objects dp2 
    ON perm.major_id = dp2.object_id
WHERE dp.name = 'User_A';