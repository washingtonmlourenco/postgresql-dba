/*
===============================================================================
 Script:     list-user-roles.sql

 Description:
     Retorna todas as roles associadas a um usuário específico
     no PostgreSQL.

     Neste exemplo, o script verifica a quais roles o usuário
     'teste1' pertence.

     Funcionamento:
         - Busca o OID da role 'teste1' em pg_roles
         - Consulta pg_auth_members para identificar associações
         - Retorna os nomes das roles vinculadas ao usuário

 Objetivo:
     - Auditoria de permissões
     - Validação de privilégios herdados
     - Troubleshooting de acesso

 Observações:
     - PostgreSQL utiliza o conceito unificado de "roles"
       (não há separação entre login e user como no SQL Server)
===============================================================================
*/


SELECT rolname 
FROM pg_roles 
WHERE oid IN (
    SELECT roleid 
    FROM pg_auth_members 
    WHERE member = (SELECT oid FROM pg_roles WHERE rolname = 'teste1')
);
