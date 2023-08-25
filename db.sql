CREATE DATABASE users;

CREATE TABLE a (
    id serial,
    name VARCHAR(100),
    age int 
)

INSERT INTO a(name , age) VALUES ('ali', 21), ('xoja',22), ('mark',25),('aziz',27);

SELECT * FROM a;

CREATE or REPLACE FUNCTION userAll(user_id int)
RETURNS boolean
AS
$$
DECLARE 
users boolean := false;
BEGIN
SELECT true INTO users FROM a WHERE id = user_id;
IF users then 
DELETE FROM a  WHERE id = user_id;
return true;
ELSE
RAISE NOTICE 'id mavjud emas';
return false;
end IF;
end;
$$ language plpgsql;

SELECT userAll(1);







//////////////////////////////


-- TABLE new user FUNCTION


# CREATE OR REPLACE FUNCTION data(name text, age int)
# returns void
# LANGUAGE plpgsql
# as
# $$
# begin
# insert into a(name, age) values (name , age);
# end;
fllow$# $$;





