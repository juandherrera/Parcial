CREATE TABLESPACE mid_term
CREATE DATAFILE 'JUAN.DBF' SIZE 20 MB
EXTENT MANAGEMENT LOCAL
SEGMENT SPACE MANAGEMENT AUTO;

CREATE PROFILE exam LIMIT
IDLE_TIME 5;
FAILED_LOGIN_ATTEMPTS 2;

CREATE USER ejercicios IDENTIFIED BY passwd;
       DEFAULT TABLESPACE mid_term;
       QUOTA UNLIMITED ON midterm;
PROFILE exam;

declare 
valor1 number 
valor2 number

CREATE OR REPLACE FUNCTION function_1 ( a number, b number , c number)
return varchar2
is
 resultado varchar2;
begin
  if b >= c then 
   resultado =: martinez
   else 
    resultado =: andres
  end if;
   
   valor1 := a;
   valor2 := a*b;
  
return resultado;
end;
begin
 DBMS_OUTPUT.PUT_LINE('EL RESULTADO CONCATENADO ES:'||TO_CHAR(valor1)||'/'||TO_CHAR(valor2)||'/'||function_1);
end;

-----------------------------------------------------------------


declare
    first number:=0;
    second number:=1;
    i number:=1;
CREATE OR REPLACE FUNCTION function_2 (n number)
return number 
is
 enesimo number;
begin
    for i in 2..n
    loop
        enesimo:=first+second;
        first:=second;
        second:=enesimo;
        return enesimo;
    end loop;
end;
begin
 DBMS_OUTPUT.PUT_LINE('EL ENESIMO VALOR ES: '||function_2);
end;








