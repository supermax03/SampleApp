CREATE TABLE ClientePrueba26(

numero INTEGER PRIMARY KEY,
first_name VARCHAR(50),
last_name  VARCHAR(50)

);

INSERT INTO ClientePrueba26
values
(
   1,
   'A',
   'B'

);
COMMIT;
INSERT INTO ClientePrueba26
values
( 1,
  'A',
  'B'
);
COMMIT; 
