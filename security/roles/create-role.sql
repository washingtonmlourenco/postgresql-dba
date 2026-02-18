/*
===============================================================================
 Tópico:     Atributos de Role no PostgreSQL

 Descrição:
     No PostgreSQL, roles são utilizadas para controle de acesso
     e autenticação. Uma role pode atuar como usuário ou grupo,
     dependendo de seus atributos.

------------------------------------------------------------------------------
 🔐 Privilégio de LOGIN

     Apenas roles com o atributo LOGIN podem autenticar no banco
     de dados.

     Ou seja:
         - Role com LOGIN  → pode conectar (equivalente a "usuário")
         - Role sem LOGIN → funciona como grupo/perfil de permissões

------------------------------------------------------------------------------
 📌 Criação de Roles

     Criar role com login explícito:

         CREATE ROLE teste4 LOGIN;

     Criar usuário (atalho):

         CREATE USER teste4;

     Observação:
         CREATE USER é equivalente a CREATE ROLE + LOGIN,
         pois já inclui LOGIN automaticamente.

------------------------------------------------------------------------------
 ⚠ Importante

     - Não é possível criar USER com o mesmo nome de uma ROLE existente.
     - PostgreSQL possui namespace único para roles.
     - Se a role já existir, será retornado erro informando duplicidade.

------------------------------------------------------------------------------
 🎯 Objetivo

     - Entender modelo de autenticação do PostgreSQL
     - Diferenciar role de grupo x role com login
     - Aplicar boas práticas de segurança

===============================================================================
*/

CREATE ROLE teste4 LOGIN;
CREATE USER teste4;

--Validar se a Role pode fazer login

SELECT rolname
  FROM pg_roles
WHERE rolcanlogin;
